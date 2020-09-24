.class Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;
.super Ljava/lang/Object;
.source "SpringOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/SpringOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReboundOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;,
        Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;
    }
.end annotation


# static fields
.field private static final FLING_CHANGE_INCREASE_STEP:F = 1.2f

.field private static final FLING_CHANGE_REDUCE_STEP:F = 0.6f

.field private static final FLING_DXDT_RATIO:F = 0.167f

.field private static final FLOAT_1:F = 1.0f

.field private static final FLOAT_2:F = 2.0f

.field private static final NUM_60:I = 0x3c

.field private static final SPRING_BACK_ADJUST_TENSION_VALUE:I = 0x64

.field private static final SPRING_BACK_ADJUST_THRESHOLD:I = 0xb4

.field private static final SPRING_BACK_FRICTION:F = 12.19f

.field private static final SPRING_BACK_STOP_THRESHOLD:I = 0x2

.field private static final SPRING_BACK_TENSION:F = 16.0f

.field private static sTimeIncrease:F = 1.0f


# instance fields
.field private mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private mFlingConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mFlingFriction:F

.field private mIsScrollView:Z

.field private mIsSpringBack:Z

.field private mOppoCount:I

.field private mPreviousState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mRestSpeedThreshold:D

.field private mScrollDuration:I

.field private mScrollFinal:I

.field private mScrollStart:I

.field private mScrollStartTime:J

.field private mSpringBackConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

.field private mStartValue:D

.field private mTempState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

.field private mTensionAdjusted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    new-instance v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 235
    new-instance v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 236
    new-instance v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-direct {v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const v0, 0x3f87ae14    # 1.06f

    .line 238
    iput v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 240
    iput-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    const-wide v0, 0x3fa999999999999aL    # 0.05

    .line 241
    iput-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    const/4 v0, 0x1

    .line 249
    iput v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mOppoCount:I

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    .line 255
    new-instance v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 256
    new-instance v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v1, 0x40286147a0000000L    # 12.1899995803833

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    iput-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    .line 257
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;Z)Z
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    return p1
.end method

.method static synthetic access$102(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;F)F
    .locals 0

    .line 217
    iput p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    return p1
.end method

.method static synthetic access$200(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)I
    .locals 0

    .line 217
    iget p0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    return p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)D
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method static synthetic access$500(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;)D
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    return-wide v0
.end method


# virtual methods
.method fling(II)V
    .locals 4

    const/4 v0, 0x1

    .line 261
    iput v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mOppoCount:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 262
    sput v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    .line 263
    iget-object v1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget v2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    .line 264
    iget-object v1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    .line 265
    iget-object v1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, v1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    int-to-double v1, p1

    .line 266
    invoke-virtual {p0, v1, v2, v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    int-to-double p1, p2

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setVelocity(D)V

    return-void
.end method

.method getCurrentValue()D
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-wide v0
.end method

.method getDisplacementDistanceForState(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;)D
    .locals 4

    .line 370
    iget-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iget-wide v2, p1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method getEndValue()D
    .locals 2

    .line 333
    iget-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-wide v0
.end method

.method getVelocity()D
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-wide v0
.end method

.method isAtRest()Z
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    .line 353
    invoke-virtual {p0, v0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v0, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 2

    .line 362
    iget-object p2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    int-to-double v0, p1

    iput-wide v0, p2, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 363
    iget-object p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 364
    iput-wide p2, p1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 365
    iget-object p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p2, p1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 366
    iput-wide p2, p1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method setAtRest()V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    .line 346
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-object v1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v1, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    iput-wide v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 347
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    return-void
.end method

.method setConfig(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 301
    iput-object p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    return-void

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "springConfig is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setCurrentValue(DZ)V
    .locals 3

    .line 305
    iput-wide p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    .line 306
    iget-boolean v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mIsScrollView:Z

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 308
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    if-eqz p3, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setAtRest()V

    :cond_1
    return-void
.end method

.method setEndValue(D)V
    .locals 2

    .line 337
    iget-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getCurrentValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mStartValue:D

    .line 341
    iput-wide p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    return-void
.end method

.method setVelocity(D)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v0, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide p1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    return-void
.end method

.method springBack(III)Z
    .locals 3

    int-to-double v0, p1

    const/4 v2, 0x0

    .line 271
    invoke-virtual {p0, v0, v1, v2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setCurrentValue(DZ)V

    if-gt p1, p3, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    new-instance p1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget p2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingFriction:F

    float-to-double p2, p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;-><init>(DD)V

    invoke-virtual {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return v2

    :cond_1
    :goto_0
    if-le p1, p3, :cond_2

    int-to-double p1, p3

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    goto :goto_1

    :cond_2
    if-ge p1, p2, :cond_3

    int-to-double p1, p2

    .line 276
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setEndValue(D)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 278
    iput-boolean p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    .line 279
    iget-object p2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide v0, 0x40286147a0000000L    # 12.1899995803833

    invoke-virtual {p2, v0, v1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setFriction(D)V

    .line 280
    iget-object p2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    invoke-virtual {p2, v0, v1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->setTension(D)V

    .line 281
    iget-object p2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mSpringBackConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p2}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return p1
.end method

.method startScroll(III)V
    .locals 0

    .line 290
    iput p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollStart:I

    add-int/2addr p1, p2

    .line 291
    iput p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    .line 292
    iput p3, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollDuration:I

    .line 293
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollStartTime:J

    .line 294
    iget-object p1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mFlingConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->setConfig(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;)V

    return-void
.end method

.method update()Z
    .locals 26

    move-object/from16 v0, p0

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->isAtRest()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 383
    :cond_0
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 384
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v5, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 385
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v7, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 398
    iget-boolean v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    const/4 v9, 0x1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-nez v1, :cond_2

    .line 399
    iget v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mOppoCount:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    .line 400
    sget v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    const v2, 0x3ca3d70b    # 0.020000001f

    add-float/2addr v1, v2

    sput v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    .line 401
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v12, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    const-wide v14, 0x3f947ae160000000L    # 0.020000001415610313

    add-double/2addr v12, v14

    iput-wide v12, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_0

    .line 403
    :cond_1
    sget v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    const v2, 0x3f19999a    # 0.6f

    sub-float v12, v1, v2

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    sub-float/2addr v1, v12

    sput v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    .line 404
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v14, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    sget v12, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->sTimeIncrease:F

    sub-float/2addr v12, v2

    div-float/2addr v12, v13

    float-to-double v12, v12

    sub-double/2addr v14, v12

    iput-wide v14, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    goto :goto_0

    .line 407
    :cond_2
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->getDisplacementDistanceForState(Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;)D

    move-result-wide v12

    .line 408
    iget-boolean v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    if-nez v1, :cond_3

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpg-double v1, v12, v14

    if-gez v1, :cond_3

    .line 410
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v12, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    add-double/2addr v12, v14

    iput-wide v12, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    .line 411
    iput-boolean v9, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    goto :goto_0

    :cond_3
    cmpg-double v1, v12, v10

    if-gez v1, :cond_4

    .line 414
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v3, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    iput-wide v3, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 415
    iput-boolean v2, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTensionAdjusted:Z

    .line 416
    iput-boolean v2, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mIsSpringBack:Z

    return v2

    .line 422
    :cond_4
    :goto_0
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v1, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    iget-wide v12, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v12, v7

    mul-double/2addr v1, v12

    iget-object v7, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v7, v7, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    iget-object v12, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mPreviousState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget-wide v12, v12, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    mul-double/2addr v7, v12

    sub-double/2addr v1, v7

    .line 424
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v5

    div-double/2addr v7, v10

    add-double/2addr v7, v3

    .line 425
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v12, v1

    div-double/2addr v12, v10

    add-double/2addr v12, v5

    .line 427
    iget-object v14, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v14, v14, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    iget-wide v9, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v9, v7

    mul-double/2addr v14, v9

    iget-object v7, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v7, v7, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v7, v12

    sub-double/2addr v14, v7

    .line 429
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v12

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    add-double/2addr v7, v3

    .line 430
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v11

    move-wide/from16 v18, v1

    float-to-double v1, v11

    mul-double/2addr v1, v14

    div-double/2addr v1, v9

    add-double/2addr v1, v5

    .line 432
    iget-object v9, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v9, v9, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v20, v14

    iget-wide v14, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v14, v7

    mul-double/2addr v9, v14

    iget-object v7, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v7, v7, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v7, v1

    sub-double/2addr v9, v7

    .line 434
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v7, v1

    add-double/2addr v7, v3

    .line 435
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v11

    float-to-double v14, v11

    mul-double/2addr v14, v9

    add-double/2addr v14, v5

    .line 437
    iget-object v11, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    move-wide/from16 v22, v3

    iget-wide v3, v11, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mTension:D

    move-wide/from16 v24, v9

    iget-wide v9, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mEndValue:D

    sub-double/2addr v9, v7

    mul-double/2addr v3, v9

    iget-object v9, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mConfig:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;

    iget-wide v9, v9, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$ReboundConfig;->mFriction:D

    mul-double/2addr v9, v14

    sub-double/2addr v3, v9

    add-double/2addr v12, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v1

    add-double/2addr v12, v5

    add-double/2addr v12, v14

    const-wide v9, 0x3fc5604180000000L    # 0.16699999570846558

    mul-double/2addr v12, v9

    add-double v16, v20, v24

    mul-double v16, v16, v1

    add-double v1, v18, v16

    add-double/2addr v1, v3

    mul-double/2addr v1, v9

    .line 443
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v12, v3

    add-double v3, v22, v12

    .line 444
    invoke-static {}, Lcom/color/support/widget/SpringOverScroller;->access$600()F

    move-result v9

    float-to-double v9, v9

    mul-double/2addr v1, v9

    add-double/2addr v5, v1

    .line 446
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mTempState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v14, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 447
    iput-wide v7, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 449
    iget-object v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iput-wide v5, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mVelocity:D

    .line 450
    iput-wide v3, v1, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    .line 452
    iget v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mOppoCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mOppoCount:I

    return v2
.end method

.method updateScroll(F)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mCurrentState:Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;

    iget v1, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollStart:I

    iget v2, p0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller;->mScrollFinal:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v1, p1

    int-to-double v1, v1

    iput-wide v1, v0, Lcom/color/support/widget/SpringOverScroller$ReboundOverScroller$PhysicsState;->mPosition:D

    return-void
.end method
