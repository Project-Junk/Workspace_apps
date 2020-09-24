.class public Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;
.super Landroid/view/View;
.source "ColorSideGestureNavView.java"


# static fields
.field public static final BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEGREE_DIRECTION_RTL:I = 0xb4

.field public static final ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mAppIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mAppIconAnimator:Landroid/animation/ObjectAnimator;

.field private mAppIconMatrix:Landroid/graphics/Matrix;

.field private mAppIconProcessing:Z

.field private mAppIconProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mAppIconScale:F

.field private mBackIcon:Landroid/graphics/Bitmap;

.field private mBackIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBackIconAnimator:Landroid/animation/ObjectAnimator;

.field private mBackIconMatrix:Landroid/graphics/Matrix;

.field private mBackIconProcessing:Z

.field private mBackIconProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mBackIconScale:F

.field private mBezierControlOffset1:I

.field private mBezierControlOffset2:I

.field private mBezierControlPoint1:Landroid/graphics/PointF;

.field private mBezierControlPoint2:Landroid/graphics/PointF;

.field private mBezierControlPoint3:Landroid/graphics/PointF;

.field private mBezierControlPoint4:Landroid/graphics/PointF;

.field private mBezierPaint:Landroid/graphics/Paint;

.field private mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

.field private mCurrentPoint:Landroid/graphics/PointF;

.field private mDisableIcon:Landroid/graphics/Bitmap;

.field private mEndPoint:Landroid/graphics/PointF;

.field private mEnterAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mEnterAnimProcessing:Z

.field private mEnterAnimator:Landroid/animation/ObjectAnimator;

.field private mEnterProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mExitAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mExitAnimProcessing:Z

.field private mExitAnimator:Landroid/animation/ObjectAnimator;

.field private mExitProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mGestureState:I

.field private mHasDownEvent:Z

.field private mIconPaint:Landroid/graphics/Paint;

.field private mLastGestureState:I

.field private mPosition:I

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStartPoint:Landroid/graphics/PointF;

.field private mTargetPoint:Landroid/graphics/PointF;

.field private mViewOffsetX:I

.field private mViewOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 71
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 72
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3ed1eb85    # 0.41f

    const v3, 0x3e75c28f    # 0.24f

    const v4, 0x3f8e147b    # 1.11f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimProcessing:Z

    .line 81
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    .line 83
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconProcessing:Z

    .line 84
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconScale:F

    .line 87
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconProcessing:Z

    .line 88
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconScale:F

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    .line 91
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    .line 92
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    .line 93
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    .line 94
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    .line 95
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    .line 96
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    .line 97
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    .line 100
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getBezierControlOffset1()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset1:I

    .line 101
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getBezierControlOffsetSwitch2()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset2:I

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mFinished:Z

    .line 111
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mHasDownEvent:Z

    .line 112
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 114
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$1;

    const-string v0, "EnterAnimation"

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$1;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterProperty:Landroid/util/IntProperty;

    .line 130
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$2;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 153
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;

    const-string v0, "ExitAnimation"

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$3;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitProperty:Landroid/util/IntProperty;

    .line 169
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$4;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 200
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;

    const-string v0, "BackIconAnimation"

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$5;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconProperty:Landroid/util/FloatProperty;

    .line 213
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$6;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$6;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 233
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$7;

    const-string v0, "AppIconAnimation"

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$7;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconProperty:Landroid/util/FloatProperty;

    .line 246
    new-instance p1, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$8;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView$8;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 268
    iput p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    .line 269
    iput-object p4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    .line 270
    invoke-direct {p0, p3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateOffset(I)V

    .line 271
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->initPaint()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/graphics/PointF;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/graphics/PointF;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconProcessing:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconProcessing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimProcessing:Z

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mFinished:Z

    return p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconScale:F

    return p1
.end method

.method static synthetic access$902(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconScale:F

    return p1
.end method

.method private addCurveToPoint(Landroid/graphics/Path;)V
    .locals 9

    .line 468
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v1, v1

    sub-float v7, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v1, v1

    sub-float v8, v0, v1

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 471
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v1, v1

    sub-float v7, v0, v1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float p0, p0

    sub-float v8, v0, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-void
.end method

.method private calculateControlPoint()V
    .locals 5

    .line 488
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 490
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 491
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 492
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 493
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 494
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v3

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 495
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 496
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset2:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 497
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 498
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset2:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 499
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 500
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 503
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 504
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEndPoint:Landroid/graphics/PointF;

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 505
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 506
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint1:Landroid/graphics/PointF;

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 507
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 508
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 509
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset2:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 510
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 511
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint3:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset2:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 512
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlPoint4:Landroid/graphics/PointF;

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 513
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierControlOffset1:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    add-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateMatrix()V
    .locals 6

    .line 518
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 519
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 521
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v2

    neg-int v2, v2

    .line 523
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v3

    .line 522
    invoke-static {v0, v2, v3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->boundToRange(III)I

    move-result v0

    .line 524
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 525
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconScale:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 526
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 527
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconScale:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    goto/16 :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 530
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowWidth()I

    move-result v2

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimCancelDistance()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowWidth()I

    move-result v3

    .line 529
    invoke-static {v0, v2, v3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->boundToRange(III)I

    move-result v0

    .line 531
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 532
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconScale:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 533
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 534
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconScale:F

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 536
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 537
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getIconSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_2
    return-void
.end method

.method private calculateOffset(I)V
    .locals 2

    .line 542
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 543
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    .line 544
    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenHeight(I)I

    move-result v0

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowHeight(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 546
    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenWidth(I)I

    move-result v0

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    .line 547
    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenHeight(I)I

    move-result v0

    invoke-static {p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getWindowHeight(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateTargetPoint(Landroid/graphics/PointF;II)V
    .locals 3

    .line 477
    iget v0, p1, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    int-to-float v1, p3

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimRadius()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-static {v0, v1, p3}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->boundToRange(III)I

    move-result p3

    int-to-float p3, p3

    iput p3, p1, Landroid/graphics/PointF;->y:F

    .line 478
    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    const v0, 0x3ea56041    # 0.32299998f

    if-nez p3, :cond_0

    .line 479
    iget-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget p3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p3, v0

    float-to-int p3, p3

    const/4 v0, 0x0

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimSwitchDistance()I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->boundToRange(III)I

    move-result p3

    int-to-float p3, p3

    iput p3, p2, Landroid/graphics/PointF;->x:F

    .line 480
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 482
    iget-object p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    int-to-float v1, p2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getAnimSwitchDistance()I

    move-result v1

    sub-int v1, p2, v1

    invoke-static {v0, v1, p2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->boundToRange(III)I

    move-result p2

    int-to-float p2, p2

    iput p2, p3, Landroid/graphics/PointF;->x:F

    .line 483
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    :cond_1
    :goto_0
    return-void
.end method

.method private getAppIconAnimation(ZJJ)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 441
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    .line 442
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    .line 445
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 448
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 449
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 450
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getBackIconAnimation(ZJJ)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 424
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    .line 425
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->ICON_ENTER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconProperty:Landroid/util/FloatProperty;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    .line 428
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->ICON_EXIT_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 430
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 432
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 433
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getBezierDrawingPath()Landroid/graphics/Path;
    .locals 4

    .line 461
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 462
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mStartPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mViewOffsetY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 463
    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->addCurveToPoint(Landroid/graphics/Path;)V

    return-object v0
.end method

.method private initPaint()V
    .locals 2

    .line 389
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    .line 390
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 391
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 392
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    .line 400
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private startEnterAnimation(IIJ)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterProperty:Landroid/util/IntProperty;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    .line 405
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 406
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 407
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startExitAnimation(IIJ)V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitProperty:Landroid/util/IntProperty;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    .line 413
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->BEZIER_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 415
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateView()V
    .locals 0

    .line 455
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateControlPoint()V

    .line 456
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateMatrix()V

    .line 457
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->invalidate()V

    return-void
.end method


# virtual methods
.method public isExitAnimFinished()Z
    .locals 0

    .line 356
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic lambda$onUpEvent$0$ColorSideGestureNavView()V
    .locals 2

    .line 343
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mHasDownEvent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 344
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onConfigChanged(I)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateOffset(I)V

    .line 352
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->resetState()V

    return-void
.end method

.method public onDownEvent()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->resetState()V

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mHasDownEvent:Z

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSideGestureNavView : onDownEvent mPosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorSideGesture"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 373
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 374
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->getBezierDrawingPath()Landroid/graphics/Path;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBezierPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 376
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconProcessing:Z

    if-eqz v0, :cond_1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const-string p0, "NavBar"

    const-string p1, "ColorSideGesture"

    const-string v0, "onDraw, mAppIcon is null"

    .line 380
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 383
    :cond_2
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconProcessing:Z

    if-eqz v0, :cond_4

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public onGestureFinished(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 3

    .line 319
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mHasDownEvent:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 322
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mFinished:Z

    .line 323
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    const-wide/16 v1, 0xc8

    if-nez v0, :cond_1

    .line 324
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->startExitAnimation(IIJ)V

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->startExitAnimation(IIJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUpEvent()V
    .locals 3

    const/4 v0, 0x0

    .line 338
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mHasDownEvent:Z

    .line 339
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 340
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    .line 342
    :cond_0
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureNavView$2E-ZX8I-sXII0nGG6yFyiplmy0Q;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureNavView$2E-ZX8I-sXII0nGG6yFyiplmy0Q;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSideGestureNavView : onUpEvent mPosition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NavBar"

    const-string v1, "ColorSideGesture"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateGestureView(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V
    .locals 10

    .line 275
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mHasDownEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mFinished:Z

    .line 279
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mRotation:I

    .line 280
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getScreenHeight()I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenHeight:I

    .line 281
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getScreenWidth()I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    .line 282
    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    iput v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    .line 283
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getState()I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    .line 284
    invoke-virtual {p1}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    .line 285
    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenHeight:I

    invoke-direct {p0, p1, v1, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateTargetPoint(Landroid/graphics/PointF;II)V

    .line 286
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    if-ne p1, v1, :cond_2

    :cond_1
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimProcessing:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    if-nez p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 290
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 292
    :cond_2
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    if-eq p1, v1, :cond_4

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    if-ne p1, v1, :cond_4

    .line 293
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    if-nez p1, :cond_3

    .line 294
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    invoke-direct {p0, p1, v0, v3, v4}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->startExitAnimation(IIJ)V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_5

    .line 296
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->startExitAnimation(IIJ)V

    goto :goto_0

    .line 298
    :cond_4
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    if-ne p1, v1, :cond_5

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    if-eq p1, v1, :cond_5

    .line 299
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    float-to-int p1, p1

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->startEnterAnimation(IIJ)V

    .line 302
    :cond_5
    :goto_0
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-ne p1, v1, :cond_6

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    if-ne p1, v3, :cond_6

    .line 303
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    const-wide/16 v5, 0x14

    const-wide/16 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->getBackIconAnimation(ZJJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v5, 0x1

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    move-object v4, p0

    .line 304
    invoke-direct/range {v4 .. v9}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->getAppIconAnimation(ZJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v2

    .line 303
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 305
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 306
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    invoke-interface {p1}, Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;->onPerformHapticFeedback()V

    goto :goto_1

    .line 307
    :cond_6
    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    if-ne p1, v1, :cond_7

    .line 308
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v3, [Landroid/animation/Animator;

    const/4 v4, 0x1

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->getBackIconAnimation(ZJJ)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v5, 0x0

    const-wide/16 v6, 0x14

    const-wide/16 v8, 0x0

    move-object v4, p0

    .line 309
    invoke-direct/range {v4 .. v9}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->getAppIconAnimation(ZJJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v2

    .line 308
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 310
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 313
    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimProcessing:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    if-nez p1, :cond_8

    .line 314
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->updateView()V

    :cond_8
    return-void
.end method

.method public resetState()V
    .locals 4

    const/4 v0, 0x1

    .line 552
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mFinished:Z

    const/4 v1, -0x1

    .line 553
    iput v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mLastGestureState:I

    .line 554
    iput v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mGestureState:I

    .line 555
    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimProcessing:Z

    if-eqz v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mEnterAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 558
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimProcessing:Z

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mExitAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 561
    :cond_1
    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconProcessing:Z

    if-eqz v1, :cond_2

    .line 562
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 564
    :cond_2
    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconProcessing:Z

    if-eqz v1, :cond_3

    .line 565
    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    const/16 v1, 0x8

    .line 567
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->setVisibility(I)V

    .line 568
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 569
    iget v3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mPosition:I

    if-nez v3, :cond_4

    .line 570
    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_4
    if-ne v3, v0, :cond_5

    .line 572
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 574
    :cond_5
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenWidth:I

    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mScreenHeight:I

    invoke-direct {p0, v1, v0, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateTargetPoint(Landroid/graphics/PointF;II)V

    .line 575
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 576
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mCurrentPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mTargetPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 577
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateControlPoint()V

    .line 578
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->calculateMatrix()V

    return-void
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mAppIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBackIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mBackIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDisableIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureNavView;->mDisableIcon:Landroid/graphics/Bitmap;

    return-void
.end method
