.class public Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;
.super Landroid/widget/FrameLayout;
.source "ColorPageIndicator.java"

# interfaces
.implements Lcolor/support/v7/widget/pageindicator/IPagerIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_START_TRACE_ANIMATION:I = 0x11

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ColorPageIndicator2"


# instance fields
.field private mCurrentPosition:I

.field private mDotColor:I

.field private mDotCornerRadius:I

.field private mDotSize:I

.field private mDotSpacing:I

.field private mDotStepDistance:I

.field private mDotStrokeWidth:I

.field private mDotsCount:I

.field private mFinalLeft:F

.field private mFinalRight:F

.field private mHandler:Landroid/os/Handler;

.field private mIndicatorDots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorDotsParent:Landroid/widget/LinearLayout;

.field private mIsAnimated:Z

.field private mIsAnimating:Z

.field private mIsAnimatorCanceled:Z

.field private mIsClickable:Z

.field private mIsPageSelected:Z

.field private mIsPaused:Z

.field private mIsStrokeStyle:Z

.field private mLastPosition:I

.field private mNeedSettlePositionTemp:Z

.field private mOnDotClickListener:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;

.field private mTraceAnimator:Landroid/animation/ValueAnimator;

.field private mTraceDotColor:I

.field private mTraceLeft:F

.field private mTracePaint:Landroid/graphics/Paint;

.field private mTraceRect:Landroid/graphics/RectF;

.field private mTraceRight:F

.field private mTranceCutTailRight:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 88
    iput p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceLeft:F

    .line 91
    iput v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRight:F

    .line 92
    iput v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalLeft:F

    .line 93
    iput v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalRight:F

    .line 98
    iput-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTranceCutTailRight:Z

    .line 102
    iput-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    .line 106
    iput-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimating:Z

    .line 110
    iput-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimatorCanceled:Z

    .line 114
    iput-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPaused:Z

    .line 118
    iput-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mNeedSettlePositionTemp:Z

    .line 119
    iput-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPageSelected:Z

    .line 124
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    .line 158
    invoke-static {p0, p3}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDots:Ljava/util/List;

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_page_indicator_dot_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_page_indicator_dot_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_page_indicator_dot_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStrokeWidth:I

    .line 163
    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    iput v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotCornerRadius:I

    const/4 v1, -0x1

    .line 164
    iput v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotColor:I

    .line 165
    sget v1, Lcolor/support/v7/appcompat/R$attr;->colorTintControlNormal:I

    invoke-static {p1, v1, p3}, Lcom/color/support/util/ColorContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceDotColor:I

    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsClickable:Z

    .line 167
    iput-boolean v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsStrokeStyle:Z

    if-eqz p2, :cond_1

    .line 169
    sget-object v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 170
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator_traceDotColor:I

    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceDotColor:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceDotColor:I

    .line 171
    invoke-static {p1}, Lcom/color/support/util/ColorDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator_dotColor:I

    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotColor:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotColor:I

    .line 174
    :cond_0
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator_dotSize:I

    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    .line 175
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator_dotSpacing:I

    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    .line 176
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator_dotCornerRadius:I

    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    div-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotCornerRadius:I

    .line 177
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator_dotClickable:I

    iget-boolean v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsClickable:Z

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsClickable:Z

    .line 179
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorPageIndicator_dotStrokeWidth:I

    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStrokeWidth:I

    .line 180
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    :cond_1
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 184
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 187
    new-array p2, v2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    .line 188
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xf0

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 189
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2

    .line 190
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-direct {v0, v5, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 192
    :cond_2
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$1;-><init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$2;-><init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    .line 244
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceDotColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    mul-int/2addr v0, v2

    add-int/2addr p2, v0

    iput p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    .line 247
    new-instance p2, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$3;

    invoke-direct {p2, p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$3;-><init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V

    iput-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    .line 257
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    .line 258
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    iget-object p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 261
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->addView(Landroid/view/View;)V

    .line 262
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$4;

    invoke-direct {p2, p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$4;-><init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimatorCanceled:Z

    return p0
.end method

.method static synthetic access$002(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimatorCanceled:Z

    return p1
.end method

.method static synthetic access$100(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F
    .locals 0

    .line 58
    iget p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceLeft:F

    return p0
.end method

.method static synthetic access$1002(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$102(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceLeft:F

    return p1
.end method

.method static synthetic access$1100(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->startTraceAnimator()V

    return-void
.end method

.method static synthetic access$1200(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I
    .locals 0

    .line 58
    iget p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$1300(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->snapToPoition(I)V

    return-void
.end method

.method static synthetic access$1400(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mOnDotClickListener:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F
    .locals 0

    .line 58
    iget p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalLeft:F

    return p0
.end method

.method static synthetic access$300(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F
    .locals 0

    .line 58
    iget p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRight:F

    return p0
.end method

.method static synthetic access$302(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRight:F

    return p1
.end method

.method static synthetic access$400(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)F
    .locals 0

    .line 58
    iget p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalRight:F

    return p0
.end method

.method static synthetic access$500(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$600(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)I
    .locals 0

    .line 58
    iget p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    return p0
.end method

.method static synthetic access$700(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mNeedSettlePositionTemp:Z

    return p0
.end method

.method static synthetic access$702(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mNeedSettlePositionTemp:Z

    return p1
.end method

.method static synthetic access$800(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTranceCutTailRight:Z

    return p0
.end method

.method static synthetic access$902(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    return p1
.end method

.method private addIndicatorDots(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 341
    iget-boolean v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsStrokeStyle:Z

    iget v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotColor:I

    invoke-direct {p0, v1, v2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->buildDot(ZI)Landroid/view/View;

    move-result-object v1

    .line 343
    iget-boolean v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsClickable:Z

    if-eqz v2, :cond_0

    .line 344
    new-instance v2, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;

    invoke-direct {v2, p0, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$5;-><init>(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_0
    iget-object v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDots:Ljava/util/List;

    sget v3, Lcolor/support/v7/appcompat/R$id;->color_page_indicator_dot:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildDot(ZI)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$layout;->color_page_indicator_dot_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 316
    sget v1, Lcolor/support/v7/appcompat/R$id;->color_page_indicator_dot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 317
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_1

    .line 318
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_0

    sget v4, Lcolor/support/v7/appcompat/R$drawable;->color_page_indicator_dot_stroke:I

    goto :goto_0

    :cond_0
    sget v4, Lcolor/support/v7/appcompat/R$drawable;->color_page_indicator_dot:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 321
    :cond_1
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_2

    sget v4, Lcolor/support/v7/appcompat/R$drawable;->color_page_indicator_dot_stroke:I

    goto :goto_1

    :cond_2
    sget v4, Lcolor/support/v7/appcompat/R$drawable;->color_page_indicator_dot:I

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 325
    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 326
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget v4, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    invoke-virtual {v3, v4, v2, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 328
    invoke-direct {p0, p1, v1, p2}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setupDotView(ZLandroid/view/View;I)V

    return-object v0
.end method

.method private pauseTrace()V
    .locals 1

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPaused:Z

    return-void
.end method

.method private removeIndicatorDots(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 334
    iget-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDotsParent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 335
    iget-object v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDots:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resumeTrace()V
    .locals 1

    const/4 v0, 0x0

    .line 395
    iput-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPaused:Z

    return-void
.end method

.method private setupDotView(ZLandroid/view/View;I)V
    .locals 0

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 306
    iget p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStrokeWidth:I

    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 310
    :goto_0
    iget p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotCornerRadius:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method private snapToPoition(I)V
    .locals 1

    .line 273
    iget p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mCurrentPosition:I

    invoke-direct {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->verifyFinalPosition(I)V

    .line 274
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalLeft:F

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 275
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalRight:F

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 276
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->invalidate()V

    return-void
.end method

.method private startTraceAnimator()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->stopTraceAnimator()V

    .line 375
    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private verifyFinalPosition(I)V
    .locals 3

    .line 540
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mWidth:I

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    iget v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    int-to-float p1, v0

    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalRight:F

    .line 542
    iget p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalRight:F

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalLeft:F

    goto :goto_0

    .line 544
    :cond_0
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    add-int/2addr v0, v1

    iget v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalRight:F

    .line 545
    iget p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalRight:F

    int-to-float v0, v1

    sub-float/2addr p1, v0

    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mFinalLeft:F

    :goto_0
    return-void
.end method

.method private verifyLayoutWidth()V
    .locals 2

    .line 363
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotsCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 366
    :cond_0
    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mWidth:I

    .line 367
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->requestLayout()V

    return-void
.end method


# virtual methods
.method public addDot()V
    .locals 2

    .line 283
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotsCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotsCount:I

    .line 284
    invoke-direct {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->verifyLayoutWidth()V

    .line 285
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->addIndicatorDots(I)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 299
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isLayoutRtl()Z
    .locals 3

    .line 614
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 615
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->getLayoutDirection()I

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

.method protected onMeasure(II)V
    .locals 0

    .line 400
    iget p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mWidth:I

    iget p2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 593
    invoke-direct {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->pauseTrace()V

    .line 594
    iget-boolean p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    if-eqz p1, :cond_4

    .line 595
    iput-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 598
    invoke-direct {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->resumeTrace()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_4

    .line 599
    iget-boolean p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPaused:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPageSelected:Z

    if-nez p1, :cond_4

    .line 600
    :cond_2
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 601
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    :cond_3
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->stopTraceAnimator()V

    .line 604
    iget-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 606
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPageSelected:Z

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 466
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->isLayoutRtl()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 474
    iget v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mCurrentPosition:I

    if-le v2, p1, :cond_1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mCurrentPosition:I

    if-gt v2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_6

    if-eqz p3, :cond_2

    .line 477
    iget p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mWidth:I

    int-to-float p3, p3

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    mul-int v2, p1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 478
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 480
    :cond_2
    iget p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    add-int/2addr p3, v0

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    mul-int v1, p1, v0

    add-int/2addr p3, v1

    int-to-float p3, p3

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    .line 481
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 484
    :goto_1
    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPaused:Z

    if-eqz p3, :cond_4

    .line 485
    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimating:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    if-eqz p3, :cond_3

    .line 486
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    .line 488
    :cond_3
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 489
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    .line 493
    :cond_4
    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    if-eqz p3, :cond_5

    .line 494
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    .line 496
    :cond_5
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 497
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_3

    :cond_6
    if-eqz p3, :cond_7

    .line 503
    iget p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mWidth:I

    int-to-float p3, p3

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    int-to-float v0, v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    sub-float/2addr p3, v0

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    .line 504
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->left:F

    goto :goto_2

    .line 506
    :cond_7
    iget p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSpacing:I

    int-to-float p3, p3

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotStepDistance:I

    int-to-float v0, v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    .line 507
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->left:F

    .line 509
    :goto_2
    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPaused:Z

    if-eqz p3, :cond_9

    .line 510
    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimating:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    if-eqz p3, :cond_8

    .line 511
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 513
    :cond_8
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 514
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 518
    :cond_9
    iget-boolean p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    if-eqz p3, :cond_a

    .line 519
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    .line 521
    :cond_a
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, v0

    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v0, v0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_b

    .line 522
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotSize:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 527
    :cond_b
    :goto_3
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iput p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceLeft:F

    .line 528
    iget-object p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iput p3, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceRight:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_c

    .line 530
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mCurrentPosition:I

    .line 532
    :cond_c
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsPageSelected:Z

    .line 561
    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mLastPosition:I

    const/4 v2, 0x0

    if-eq v1, p1, :cond_0

    .line 562
    iget-boolean v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    if-eqz v1, :cond_0

    .line 563
    iput-boolean v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimated:Z

    .line 566
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mLastPosition:I

    if-gt v1, p1, :cond_2

    goto :goto_0

    :cond_1
    iget v1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mLastPosition:I

    if-le v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTranceCutTailRight:Z

    .line 567
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->verifyFinalPosition(I)V

    .line 572
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mLastPosition:I

    const/16 v1, 0x11

    if-eq v0, p1, :cond_4

    .line 573
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    :cond_3
    invoke-virtual {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->stopTraceAnimator()V

    .line 577
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 579
    :cond_4
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 580
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 583
    :cond_5
    :goto_1
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mLastPosition:I

    return-void
.end method

.method public removeDot()V
    .locals 2

    .line 292
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotsCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotsCount:I

    .line 293
    invoke-direct {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->verifyLayoutWidth()V

    .line 294
    invoke-direct {p0, v1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->removeIndicatorDots(I)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 422
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mCurrentPosition:I

    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mLastPosition:I

    .line 423
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->snapToPoition(I)V

    return-void
.end method

.method public setDotsCount(I)V
    .locals 1

    .line 408
    iget v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotsCount:I

    invoke-direct {p0, v0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->removeIndicatorDots(I)V

    .line 409
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotsCount:I

    .line 410
    invoke-direct {p0}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->verifyLayoutWidth()V

    .line 411
    invoke-direct {p0, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->addIndicatorDots(I)V

    return-void
.end method

.method public setOnDotClickListener(Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mOnDotClickListener:Lcolor/support/v7/widget/pageindicator/ColorPageIndicator$OnIndicatorDotClickListener;

    return-void
.end method

.method public setPageIndicatorDotsColor(I)V
    .locals 3

    .line 440
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mDotColor:I

    .line 441
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDots:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIndicatorDots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 443
    iget-boolean v2, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsStrokeStyle:Z

    invoke-direct {p0, v2, v1, p1}, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->setupDotView(ZLandroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTraceDotColor(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceDotColor:I

    .line 432
    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public stopTraceAnimator()V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimatorCanceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 383
    iput-boolean v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mIsAnimatorCanceled:Z

    .line 385
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget-object p0, p0, Lcolor/support/v7/widget/pageindicator/ColorPageIndicator;->mTraceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
