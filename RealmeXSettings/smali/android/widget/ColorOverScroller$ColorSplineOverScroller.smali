.class Landroid/widget/ColorOverScroller$ColorSplineOverScroller;
.super Ljava/lang/Object;
.source "ColorOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ColorOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorSplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final BALLISTIC_THRESHOLD:F = 0.91f

.field private static final BASE_DENSITY_FACTOR:F = 160.0f

.field private static final CUBIC:I = 0x1

.field private static final DECELERATION_RATE:F

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_CONTROL_ONE_X:F = 0.0f

.field private static final FLING_CONTROL_ONE_Y:F = 0.17f

.field private static final FLING_CONTROL_TWO_X:F = 0.25f

.field private static final FLING_CONTROL_TWO_Y:F = 0.85f

.field private static final FLING_SPLINE:I = 0x3

.field private static final FLOAT_1:F = 1.0f

.field private static final FLOAT_2:F = 2.0f

.field private static final FLOAT_6:F = 6.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INCH_METER:F = 39.37f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final NUM_10:I = 0xa

.field private static final NUM_100:I = 0x64

.field private static final NUM_1000:I = 0x3e8

.field private static final NUM_800:I = 0x320

.field private static final OVER_SPLINE:I = 0x4

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final PHYSICAL_COFF_FACTOR:F = 0.84f

.field private static final SOLVER_TIMESTEP_SEC:D = 0.016

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static final VISCOUS_FLUID_SCALE:F = 14.0f

.field private static sViscousFluidNormalize:F


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mEndValue:D

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlingInterpolator:Landroid/view/animation/Interpolator;

.field private mIsScrollList:Z

.field private mLastDetla:D

.field private mLastPosition:I

.field private mLastVelocity:D

.field private mOppoCount:I

.field private mOver:I

.field private mOverSplineStart:Z

.field private mOverSpring:Z

.field private mPhysicalCoeff:F

.field private mReboundFriction:F

.field private mReboundTension:F

.field private mRestThreshold:I

.field private mScrollerDistance:I

.field private mSplineDistance:I

.field private mSplineState:I

.field private mStart:I

.field private mStartTime:J

.field private mStartV:F

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 612
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    .line 632
    new-array v1, v0, [F

    sput-object v1, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->SPLINE_POSITION:[F

    .line 633
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->SPLINE_TIME:[F

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 650
    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    const/4 v1, 0x0

    .line 653
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartV:F

    const-wide/16 v2, 0x0

    .line 654
    iput-wide v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastDetla:D

    const/4 v2, 0x0

    .line 657
    iput-boolean v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mIsScrollList:Z

    .line 658
    iput-boolean v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSpring:Z

    .line 706
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    iput v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFlingFriction:F

    .line 709
    iput v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    .line 714
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mReboundTension:F

    const v2, 0x40666666    # 3.6f

    .line 715
    iput v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mReboundFriction:F

    const/16 v2, 0x14

    .line 716
    iput v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mRestThreshold:I

    .line 725
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    .line 726
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    .line 727
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mPhysicalCoeff:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 731
    sput p1, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->sViscousFluidNormalize:F

    const/high16 v0, 0x41600000    # 14.0f

    .line 732
    invoke-static {p1, v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->viscousFluid(FF)F

    move-result v0

    div-float/2addr p1, v0

    sput p1, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->sViscousFluidNormalize:F

    const p1, 0x3e2e147b    # 0.17f

    const/high16 v0, 0x3e800000    # 0.25f

    const v2, 0x3f59999a    # 0.85f

    .line 733
    invoke-static {v1, p1, v0, v2}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFlingInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$002(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;Z)Z
    .locals 0

    .line 607
    iput-boolean p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mIsScrollList:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)Z
    .locals 0

    .line 607
    iget-boolean p0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    return p0
.end method

.method static synthetic access$102(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;Z)Z
    .locals 0

    .line 607
    iput-boolean p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I
    .locals 0

    .line 607
    iget p0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static synthetic access$300(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)F
    .locals 0

    .line 607
    iget p0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static synthetic access$400(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I
    .locals 0

    .line 607
    iget p0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    return p0
.end method

.method static synthetic access$500(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I
    .locals 0

    .line 607
    iget p0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    return p0
.end method

.method static synthetic access$600(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I
    .locals 0

    .line 607
    iget p0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    return p0
.end method

.method static synthetic access$700(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)J
    .locals 2

    .line 607
    iget-wide v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/widget/ColorOverScroller$ColorSplineOverScroller;)I
    .locals 0

    .line 607
    iget p0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    return p0
.end method

.method private adjustDuration(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 757
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 762
    sget-object p2, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    .line 763
    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    .line 765
    iget p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    .line 952
    iget v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    mul-int/2addr p3, p3

    int-to-float p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    .line 953
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    .line 954
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    .line 955
    iget p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    .line 956
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    .line 955
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 957
    iget-wide v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    sub-float p3, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    .line 962
    iput p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    .line 964
    iget p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    return p0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    return p0
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    .line 928
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mPhysicalCoeff:F

    const v1, 0x3bc49ba6    # 0.006f

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .line 933
    invoke-direct {p0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 934
    sget p1, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 935
    iget v4, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    .line 940
    invoke-direct {p0, p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 941
    sget p1, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 942
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private onEdgeReached()V
    .locals 5

    .line 1027
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 1028
    iget v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    mul-int v2, v1, v1

    int-to-float v2, v2

    const/high16 v3, 0x44c80000    # 1600.0f

    div-float/2addr v2, v3

    .line 1034
    iget v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOver:I

    int-to-float v4, v3

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    neg-float v0, v0

    int-to-float v2, v1

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v2, v3

    mul-float/2addr v2, v1

    div-float/2addr v0, v2

    .line 1036
    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    int-to-float v2, v3

    :cond_0
    const/4 v0, 0x1

    .line 1040
    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    float-to-int v1, v2

    .line 1041
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOver:I

    const/4 v1, 0x2

    .line 1042
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    .line 1043
    iget v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    neg-float v2, v2

    :goto_0
    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    .line 1044
    iget v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    if-lez v1, :cond_2

    const/16 v1, -0x320

    goto :goto_1

    :cond_2
    const/16 v1, 0x320

    .line 1045
    :goto_1
    iget v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v1

    neg-int v1, v2

    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    const/4 v1, 0x4

    .line 1051
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mSplineState:I

    .line 1052
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSplineStart:Z

    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 10

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    const-string p1, "OverScroller"

    const-string p2, "startAfterEdge called from a valid position"

    .line 981
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    if-le p1, p3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    move v3, p3

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    sub-int v4, p1, v3

    mul-int v5, v4, p4

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 996
    invoke-direct {p0, p1, v3, p4}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startBounceAfterEdge(III)V

    return-void

    .line 998
    :cond_4
    invoke-direct {p0, p4}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 999
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    if-eqz v2, :cond_5

    move v7, p2

    goto :goto_3

    :cond_5
    move v7, p1

    :goto_3
    if-eqz v2, :cond_6

    move v8, p1

    goto :goto_4

    :cond_6
    move v8, p3

    .line 1000
    :goto_4
    iget v9, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOver:I

    move-object v4, p0

    move v5, p1

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->fling(IIIII)V

    return-void

    .line 1002
    :cond_7
    invoke-direct {p0, p1, v3, p4}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startSpringback(III)V

    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    .line 973
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mScrollerDistance:I

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    .line 974
    :goto_0
    invoke-static {v0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    .line 975
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->fitOnBounceCurve(III)V

    .line 976
    invoke-direct {p0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .locals 2

    const/4 p3, 0x1

    .line 834
    iput p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    .line 837
    iput p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    .line 838
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 839
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    .line 840
    iput p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    sub-int/2addr p1, p2

    .line 842
    invoke-static {p1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    neg-int p2, p1

    .line 844
    iput p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    .line 845
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOver:I

    int-to-double p1, p1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    mul-double/2addr p1, v0

    .line 846
    iget p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    return-void
.end method

.method private static viscousFluid(FF)F
    .locals 2

    const-wide v0, 0x3ff94fc6e0000000L    # 1.5819767713546753

    .line 1281
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    div-float/2addr v0, p1

    add-float/2addr v0, p0

    mul-float/2addr v0, p1

    sub-float p0, v1, v0

    float-to-double p0, p0

    .line 1283
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    sub-float/2addr v1, p0

    const p0, 0x3f21d2a7

    mul-float/2addr v1, p0

    const p0, 0x3ebc5ab2

    add-float/2addr v1, p0

    .line 1285
    sget p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->sViscousFluidNormalize:F

    mul-float/2addr v1, p0

    return v1
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 7

    .line 1061
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    iget-wide v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    .line 1078
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iget v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v3, v2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_1
    return v2

    .line 1063
    :cond_2
    iget-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mIsScrollList:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOver:I

    if-eqz v0, :cond_3

    .line 1065
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 1066
    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    .line 1068
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    .line 1069
    iput v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mScrollerDistance:I

    .line 1070
    invoke-direct {p0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->onEdgeReached()V

    .line 1084
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->update()Z

    return v1

    :cond_3
    return v2
.end method

.method extendDuration(I)V
    .locals 4

    .line 798
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 799
    iget-wide v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    .line 800
    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 801
    iput-boolean p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .locals 1

    .line 785
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .locals 7

    const/4 v0, 0x1

    .line 854
    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    .line 855
    iput p5, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOver:I

    const/4 v1, 0x0

    .line 856
    iput-boolean v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    .line 857
    invoke-static {}, Landroid/widget/ColorOverScroller;->access$900()I

    move-result v2

    if-gt p2, v2, :cond_0

    invoke-static {}, Landroid/widget/ColorOverScroller;->access$900()I

    move-result v2

    neg-int v2, v2

    if-ge p2, v2, :cond_1

    :cond_0
    int-to-float p2, p2

    .line 858
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-int p2, p2

    .line 859
    invoke-static {}, Landroid/widget/ColorOverScroller;->access$900()I

    move-result v2

    mul-int/2addr p2, v2

    :cond_1
    int-to-float v2, p2

    .line 861
    iput v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrVelocity:F

    .line 862
    iput p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    .line 865
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    .line 870
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    .line 871
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 872
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    .line 873
    iput v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartV:F

    .line 874
    iget v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastPosition:I

    .line 875
    iput-boolean v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSpring:Z

    if-gt p1, p4, :cond_9

    if-ge p1, p3, :cond_2

    goto :goto_0

    .line 883
    :cond_2
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_3

    .line 889
    invoke-direct {p0, p2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->getSplineFlingDuration(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    .line 894
    invoke-direct {p0, p2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v3

    .line 895
    iput-wide v3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mEndValue:D

    int-to-double v5, p2

    .line 896
    iput-wide v5, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastVelocity:D

    .line 899
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v5, p2

    mul-double/2addr v3, v5

    double-to-int p2, v3

    iput p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mSplineDistance:I

    .line 900
    iget p2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    .line 903
    iget p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-ge p1, p3, :cond_4

    .line 905
    iput p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    .line 908
    :cond_4
    iget p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-le p1, p4, :cond_5

    .line 910
    iput p4, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    :cond_5
    if-eqz p5, :cond_8

    .line 913
    iget-boolean p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mIsScrollList:Z

    if-nez p1, :cond_8

    .line 914
    iget p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    .line 915
    iget p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/widget/ColorOverScroller;->access$1000()I

    move-result p2

    if-gt p1, p2, :cond_6

    iget p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/widget/ColorOverScroller;->access$1000()I

    move-result p2

    neg-int p2, p2

    if-ge p1, p2, :cond_7

    .line 916
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    .line 917
    invoke-static {}, Landroid/widget/ColorOverScroller;->access$1000()I

    move-result p2

    mul-int/2addr p1, p2

    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    .line 919
    :cond_7
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    const/4 p1, 0x3

    .line 920
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mSplineState:I

    const/4 p1, 0x2

    .line 921
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    :cond_8
    return-void

    .line 878
    :cond_9
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSpring:Z

    .line 879
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 2

    .line 1014
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 1015
    iput p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOver:I

    .line 1016
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    const/4 p3, 0x1

    .line 1019
    iput p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    .line 1020
    iget p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrVelocity:F

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    invoke-direct {p0, p1, p2, p2, p3}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startAfterEdge(IIII)V

    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 0

    .line 793
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    const/4 p1, 0x0

    .line 794
    iput-boolean p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    return-void
.end method

.method setFriction(F)V
    .locals 0

    .line 721
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method springback(III)Z
    .locals 4

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    .line 811
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 812
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    .line 813
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    const/4 v1, 0x0

    .line 814
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    .line 816
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    .line 817
    iput v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_0

    .line 820
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    .line 822
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->startSpringback(III)V

    .line 825
    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method startScroll(III)V
    .locals 1

    const/4 v0, 0x0

    .line 770
    iput-boolean v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinished:Z

    .line 772
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 773
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    add-int/2addr p1, p2

    .line 774
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    .line 776
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStartTime:J

    .line 777
    iput p3, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    const/4 p1, 0x0

    .line 780
    iput p1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDeceleration:F

    .line 781
    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mVelocity:I

    return-void
.end method

.method update()Z
    .locals 23

    move-object/from16 v0, p0

    .line 1094
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 1096
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    int-to-float v1, v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1109
    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mState:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v3, v5, :cond_d

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    const-wide/16 v1, 0x0

    goto/16 :goto_1

    .line 1192
    :cond_0
    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mSplineState:I

    const/4 v7, 0x4

    if-ne v3, v7, :cond_c

    iget-boolean v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mIsScrollList:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSpring:Z

    if-nez v3, :cond_c

    :cond_1
    int-to-float v1, v1

    .line 1193
    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    int-to-float v3, v3

    div-float v3, v6, v3

    mul-float/2addr v1, v3

    const/high16 v3, 0x41600000    # 14.0f

    .line 1194
    invoke-static {v1, v3}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->viscousFluid(FF)F

    move-result v1

    .line 1195
    iget v7, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iget v8, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v7, v7

    .line 1202
    :goto_0
    iget v9, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-gez v9, :cond_2

    iget v9, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mScrollerDistance:I

    int-to-double v9, v9

    cmpl-double v9, v7, v9

    if-gez v9, :cond_3

    :cond_2
    iget v9, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-lez v9, :cond_4

    iget v9, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mScrollerDistance:I

    int-to-double v9, v9

    cmpg-double v9, v7, v9

    if-gtz v9, :cond_4

    :cond_3
    iget-boolean v9, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mIsScrollList:Z

    if-nez v9, :cond_4

    .line 1205
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    add-int/2addr v1, v5

    iput v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    .line 1206
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 1208
    iget v7, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    int-to-float v7, v7

    div-float v7, v6, v7

    mul-float/2addr v1, v7

    .line 1209
    invoke-static {v1, v3}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->viscousFluid(FF)F

    move-result v1

    .line 1210
    iget v7, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iget v8, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v7, v7

    .line 1216
    iput-boolean v5, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSplineStart:Z

    goto :goto_0

    .line 1219
    :cond_4
    iget-boolean v9, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSplineStart:Z

    if-eqz v9, :cond_8

    .line 1220
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 1221
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v6, v2

    mul-float/2addr v1, v6

    .line 1223
    invoke-static {v1, v3}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->viscousFluid(FF)F

    move-result v1

    .line 1224
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-double v9, v3

    if-gez v2, :cond_5

    sub-double v2, v9, v7

    .line 1225
    iget v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mScrollerDistance:I

    int-to-double v11, v6

    sub-double v11, v7, v11

    cmpg-double v2, v2, v11

    if-ltz v2, :cond_6

    :cond_5
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-lez v2, :cond_7

    sub-double v2, v9, v7

    iget v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mScrollerDistance:I

    int-to-double v11, v6

    sub-double v11, v7, v11

    cmpl-double v2, v2, v11

    if-lez v2, :cond_7

    .line 1228
    :cond_6
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    add-int/2addr v2, v5

    iput v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    move-wide v7, v9

    .line 1230
    :cond_7
    iput-boolean v4, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOverSplineStart:Z

    :cond_8
    move v3, v1

    move-wide v1, v7

    .line 1233
    iget v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-gez v6, :cond_9

    iget v7, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    if-le v7, v6, :cond_b

    :cond_9
    iget v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-lez v6, :cond_a

    iget v7, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    if-ge v7, v6, :cond_b

    :cond_a
    const v6, 0x3f68f5c3    # 0.91f

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_b

    .line 1234
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_e

    .line 1236
    :cond_b
    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    return v4

    .line 1241
    :cond_c
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    iput v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    return v4

    :cond_d
    int-to-float v1, v1

    const v2, 0x3ada740e

    mul-float/2addr v1, v2

    .line 1254
    iget-object v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFlingInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1257
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 1258
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v3, v6

    iput v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 1265
    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    iget v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-ne v3, v6, :cond_e

    .line 1266
    iput v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 1267
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->finish()V

    return v4

    .line 1273
    :cond_e
    :goto_1
    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    add-int/2addr v3, v5

    iput v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    .line 1274
    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    return v5

    .line 1121
    :cond_f
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastPosition:I

    int-to-double v2, v1

    .line 1122
    iget-wide v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastVelocity:D

    .line 1137
    iget v8, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mReboundTension:F

    float-to-double v9, v8

    iget-wide v11, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mEndValue:D

    int-to-double v13, v1

    sub-double v13, v11, v13

    mul-double/2addr v9, v13

    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mReboundFriction:F

    float-to-double v13, v1

    mul-double/2addr v13, v6

    sub-double/2addr v9, v13

    const-wide v13, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v15, v6, v13

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v15, v15, v17

    add-double/2addr v15, v2

    mul-double v19, v9, v13

    div-double v19, v19, v17

    add-double v19, v6, v19

    float-to-double v4, v8

    sub-double v15, v11, v15

    mul-double/2addr v4, v15

    float-to-double v13, v1

    mul-double v13, v13, v19

    sub-double/2addr v4, v13

    const-wide v13, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double v19, v19, v13

    div-double v19, v19, v17

    add-double v19, v2, v19

    mul-double v15, v4, v13

    div-double v15, v15, v17

    add-double/2addr v15, v6

    float-to-double v13, v8

    sub-double v19, v11, v19

    mul-double v13, v13, v19

    move-wide/from16 v19, v9

    float-to-double v9, v1

    mul-double/2addr v9, v15

    sub-double/2addr v13, v9

    const-wide v9, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double/2addr v15, v9

    add-double/2addr v2, v15

    mul-double v21, v13, v9

    add-double v21, v6, v21

    float-to-double v8, v8

    sub-double/2addr v11, v2

    mul-double/2addr v8, v11

    float-to-double v1, v1

    mul-double v1, v1, v21

    sub-double/2addr v8, v1

    const-wide v1, 0x3fc5555560000000L    # 0.1666666716337204

    add-double/2addr v4, v13

    mul-double v4, v4, v17

    add-double v3, v19, v4

    add-double/2addr v3, v8

    mul-double/2addr v3, v1

    const-wide v1, 0x3f90624dd2f1a9fcL    # 0.016

    mul-double/2addr v3, v1

    add-double/2addr v6, v3

    double-to-float v3, v6

    float-to-double v4, v3

    mul-double v13, v4, v1

    .line 1164
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastDetla:D

    cmpl-double v1, v1, v6

    if-lez v1, :cond_10

    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_11

    :cond_10
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrVelocity:F

    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mRestThreshold:I

    neg-int v6, v2

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_12

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_12

    .line 1166
    :cond_11
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    iput v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    .line 1167
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->finish()V

    :goto_2
    const/4 v1, 0x0

    return v1

    .line 1170
    :cond_12
    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    if-nez v1, :cond_13

    .line 1172
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    div-double/2addr v1, v13

    double-to-int v1, v1

    .line 1174
    :cond_13
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastPosition:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    .line 1175
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastDetla:D

    .line 1176
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    iput v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastPosition:I

    .line 1177
    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    const/4 v6, 0x1

    add-int/2addr v2, v6

    iput v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mOppoCount:I

    .line 1178
    iput v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrVelocity:F

    .line 1179
    iput-wide v4, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mLastVelocity:D

    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "update: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrVelocity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TestColorScroller"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-boolean v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mIsScrollList:Z

    if-eqz v2, :cond_16

    if-lez v1, :cond_14

    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    iget v3, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-ge v2, v3, :cond_15

    :cond_14
    if-gez v1, :cond_16

    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    iget v2, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    if-gt v1, v2, :cond_16

    .line 1185
    :cond_15
    iget v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    iput v1, v0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    goto :goto_2

    :cond_16
    const/4 v1, 0x1

    return v1
.end method

.method updateScroll(F)V
    .locals 2

    .line 740
    iget v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/ColorOverScroller$ColorSplineOverScroller;->mCurrentPosition:I

    return-void
.end method
