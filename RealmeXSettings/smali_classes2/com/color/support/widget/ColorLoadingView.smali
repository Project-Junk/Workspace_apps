.class public Lcom/color/support/widget/ColorLoadingView;
.super Landroid/view/View;
.source "ColorLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorLoadingView$LoadingAnimUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_TYPE:I = 0x1

.field private static final LARGE_POINT_END_ALPHA:F = 1.0f

.field private static final LARGE_POINT_START_ALPHA:F = 0.215f

.field public static final LARGE_TYPE:I = 0x2

.field private static final MEDIUM_POINT_END_ALPHA:F = 0.4f

.field private static final MEDIUM_POINT_START_ALPHA:F = 0.1f

.field public static final MEDIUM_TYPE:I = 0x1

.field private static final ONE_CIRCLE_DEGREE:I = 0x168

.field private static final ONE_CYCLE_DURATION:I = 0x1e0

.field public static final ORIGINAL_ANGLE:I = -0x5a

.field private static final PROGRESS_POINT_COUNT:I = 0x6

.field public static final SMALL_TYPE:I = 0x0

.field public static final SWIPT_ANGEL:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "ColorLoadingView"


# instance fields
.field private mAccessDescription:Ljava/lang/String;

.field private mAnimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mArcRadius:F

.field private mArcRect:Landroid/graphics/RectF;

.field private mBackGroundPaint:Landroid/graphics/Paint;

.field private mCenterX:F

.field private mCenterY:F

.field private mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

.field private mContext:Landroid/content/Context;

.field private mCurrentDegree:F

.field private mCurrentStepProgress:F

.field private mEndAlpha:F

.field private mHalfHeight:I

.field private mHalfStrokeWidth:I

.field private mHalfWidth:I

.field private mHeight:I

.field private mIsAnimationCreated:Z

.field private mIsAnimationStarted:Z

.field private mLoadingType:I

.field private mLoadingViewBgCircleColor:I

.field private mLoadingViewColor:I

.field private mPointRadius:I

.field private mPointsAlpha:[F

.field private mProgressAnimator:Landroid/animation/ValueAnimator;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mStartAlpha:F

.field private mStepDegree:F

.field private mStrokeDefaultWidth:I

.field private mStrokeLargeWidth:I

.field private mStrokeMediumWidth:I

.field private mStrokeWidth:I

.field private mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 127
    sget v0, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 133
    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/color/support/widget/ColorLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p4, 0x6

    .line 83
    new-array p4, p4, [F

    iput-object p4, p0, Lcom/color/support/widget/ColorLoadingView;->mPointsAlpha:[F

    const/4 p4, 0x0

    .line 87
    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->mWidth:I

    .line 88
    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->mHeight:I

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->mLoadingType:I

    .line 93
    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    .line 94
    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->mPointRadius:I

    const/high16 v1, 0x42700000    # 60.0f

    .line 99
    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->mStepDegree:F

    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/color/support/widget/ColorLoadingView;->mAccessDescription:Ljava/lang/String;

    const v1, 0x3dcccccd    # 0.1f

    .line 103
    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->mStartAlpha:F

    const v2, 0x3ecccccd    # 0.4f

    .line 104
    iput v2, p0, Lcom/color/support/widget/ColorLoadingView;->mEndAlpha:F

    .line 105
    iput-boolean p4, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationCreated:Z

    .line 106
    iput-boolean p4, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationStarted:Z

    .line 321
    new-instance v3, Lcom/color/support/widget/ColorLoadingView$1;

    invoke-direct {v3, p0}, Lcom/color/support/widget/ColorLoadingView$1;-><init>(Lcom/color/support/widget/ColorLoadingView;)V

    iput-object v3, p0, Lcom/color/support/widget/ColorLoadingView;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 153
    invoke-static {p0}, Lcom/color/support/c/c;->a(Landroid/view/View;)V

    .line 154
    sget-object v3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 155
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcolor/support/v7/appcompat/R$dimen;->color_loading_view_default_length:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 156
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewWidth:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/color/support/widget/ColorLoadingView;->mWidth:I

    .line 157
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewHeight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->mHeight:I

    .line 158
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->mLoadingType:I

    .line 159
    sget p3, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewColor:I

    invoke-static {p1, p3}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

    move-result p3

    .line 160
    sget p4, Lcolor/support/v7/appcompat/R$attr;->colorLoadingViewBgCircleColor:I

    invoke-static {p1, p4}, Lcom/color/support/c/b;->a(Landroid/content/Context;I)I

    move-result p4

    .line 161
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewColor:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->mLoadingViewColor:I

    .line 162
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->colorLoadingView_colorLoadingViewBgCircleColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/color/support/widget/ColorLoadingView;->mLoadingViewBgCircleColor:I

    .line 163
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeDefaultWidth:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_medium_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeMediumWidth:I

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcolor/support/v7/appcompat/R$dimen;->color_circle_loading_large_strokewidth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeLargeWidth:I

    .line 167
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeDefaultWidth:I

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    .line 168
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mLoadingType:I

    if-ne v0, p2, :cond_0

    .line 169
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeMediumWidth:I

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    .line 170
    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->mStartAlpha:F

    .line 171
    iput v2, p0, Lcom/color/support/widget/ColorLoadingView;->mEndAlpha:F

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p3, p2, :cond_1

    .line 173
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeLargeWidth:I

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    const p2, 0x3e5c28f6    # 0.215f

    .line 174
    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStartAlpha:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 175
    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mEndAlpha:F

    .line 177
    :cond_1
    :goto_0
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    shr-int/2addr p2, v0

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mPointRadius:I

    .line 178
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mWidth:I

    shr-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mCenterX:F

    .line 179
    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mHeight:I

    shr-int/2addr p2, v0

    int-to-float p2, p2

    iput p2, p0, Lcom/color/support/widget/ColorLoadingView;->mCenterY:F

    .line 180
    new-instance p2, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    invoke-direct {p2, p0}, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/color/support/widget/ColorLoadingView;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    .line 181
    iget-object p2, p0, Lcom/color/support/widget/ColorLoadingView;->mTouchHelper:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;

    iget-object p3, p0, Lcom/color/support/widget/ColorLoadingView;->mColorViewTalkBalkInteraction:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 1143
    iput-object p3, p2, Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper;->a:Lcom/color/support/internal/widget/ColorViewExplorerByTouchHelper$a;

    .line 182
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 183
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 184
    sget p2, Lcolor/support/v7/appcompat/R$string;->color_loading_view_access_string:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorLoadingView;->mAccessDescription:Ljava/lang/String;

    .line 186
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->initProgressPaint()V

    .line 187
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->initBackgroundPaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorLoadingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/color/support/widget/ColorLoadingView;->mWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorLoadingView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/color/support/widget/ColorLoadingView;->mHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorLoadingView;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/color/support/widget/ColorLoadingView;->mAccessDescription:Ljava/lang/String;

    return-object p0
.end method

.method private cancelAnimations()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private createAnimator()V
    .locals 3

    const/4 v0, 0x2

    .line 200
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    .line 201
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/color/support/widget/ColorLoadingView$LoadingAnimUpdateListener;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorLoadingView$LoadingAnimUpdateListener;-><init>(Lcom/color/support/widget/ColorLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 205
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 206
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private destroyAnimator()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 230
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 231
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private drawBackgroudCicle(Landroid/graphics/Canvas;)V
    .locals 4

    .line 405
    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/color/support/widget/ColorLoadingView;->mArcRadius:F

    iget-object v3, p0, Lcom/color/support/widget/ColorLoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initArcRect()V
    .locals 6

    .line 397
    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfStrokeWidth:I

    .line 398
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadingView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfWidth:I

    .line 399
    invoke-virtual {p0}, Lcom/color/support/widget/ColorLoadingView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfHeight:I

    .line 400
    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfWidth:I

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfStrokeWidth:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/color/support/widget/ColorLoadingView;->mArcRadius:F

    .line 401
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    iget v3, p0, Lcom/color/support/widget/ColorLoadingView;->mArcRadius:F

    sub-float/2addr v2, v3

    int-to-float v4, v0

    sub-float/2addr v4, v3

    int-to-float v5, v0

    add-float/2addr v5, v3

    int-to-float v0, v0

    add-float/2addr v0, v3

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/color/support/widget/ColorLoadingView;->mArcRect:Landroid/graphics/RectF;

    return-void
.end method

.method private initBackgroundPaint()V
    .locals 2

    .line 376
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    .line 377
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->mLoadingViewBgCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mBackGroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initProgressPaint()V
    .locals 2

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressPaint:Landroid/graphics/Paint;

    .line 192
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->mLoadingViewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private startAnimations()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 238
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 242
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->createAnimator()V

    .line 244
    iput-boolean v1, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationCreated:Z

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationStarted:Z

    if-nez v0, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->startAnimations()V

    .line 248
    iput-boolean v1, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationStarted:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 254
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 258
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->destroyAnimator()V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationCreated:Z

    .line 260
    iput-boolean v0, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationStarted:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 310
    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->mCurrentStepProgress:F

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorLoadingView;->mCurrentStepProgress:F

    .line 311
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorLoadingView;->drawBackgroudCicle(Landroid/graphics/Canvas;)V

    .line 312
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/color/support/widget/ColorLoadingView;->mHalfHeight:I

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 314
    iget-object v0, p0, Lcom/color/support/widget/ColorLoadingView;->mArcRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->initArcRect()V

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/color/support/widget/ColorLoadingView;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/color/support/widget/ColorLoadingView;->mCurrentStepProgress:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v3, v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x43340000    # 180.0f

    sub-float v0, v5, v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v4, v0

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/color/support/widget/ColorLoadingView;->mProgressPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 384
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 385
    iget-object p1, p0, Lcom/color/support/widget/ColorLoadingView;->mArcRect:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->initArcRect()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 305
    iget p1, p0, Lcom/color/support/widget/ColorLoadingView;->mWidth:I

    iget p2, p0, Lcom/color/support/widget/ColorLoadingView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorLoadingView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 392
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 393
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->initArcRect()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 281
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 282
    instance-of p1, p1, Lcom/color/support/widget/ColorLoadingView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 289
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationCreated:Z

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->createAnimator()V

    .line 291
    iput-boolean p2, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationCreated:Z

    .line 293
    :cond_1
    iget-boolean p1, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationStarted:Z

    if-nez p1, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->startAnimations()V

    .line 295
    iput-boolean p2, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationStarted:Z

    return-void

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/color/support/widget/ColorLoadingView;->cancelAnimations()V

    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadingView;->mIsAnimationStarted:Z

    :cond_3
    return-void
.end method
