.class public Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;
.super Ljava/lang/Object;
.source "ColorSideGestureDetector.java"


# instance fields
.field private mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mGestureState:I

.field private mHandler:Landroid/os/Handler;

.field private mInterceptGesture:Z

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeSide:I

.field private mSwipeSuccess:Z

.field private mSwitchAppRunnable:Ljava/lang/Runnable;

.field private mSwitchAppState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSuccess:Z

    .line 54
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    .line 59
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    .line 61
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mInterceptGesture:Z

    .line 63
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector$1;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureDetector$-8SVmspPmncCTkgDa79lqeZSdss;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureDetector$-8SVmspPmncCTkgDa79lqeZSdss;-><init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mDisplay:Landroid/view/Display;

    .line 85
    iput-object p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    .line 86
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mInterceptGesture:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->resetGestureState()V

    return-void
.end method

.method static synthetic access$202(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;)Landroid/view/Display;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method private cancelSwitchApp()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    return-void
.end method

.method private detectGestureState(III)I
    .locals 5

    int-to-float p2, p2

    .line 149
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenHeight:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->cancelSwitchApp()V

    const/4 p0, 0x4

    return p0

    :cond_0
    const-wide/16 v0, 0x1f4

    const/4 p2, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez p3, :cond_6

    if-ltz p1, :cond_1

    .line 154
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getCancelDistance()I

    move-result p3

    if-gt p1, p3, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->cancelSwitchApp()V

    return v2

    .line 157
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getCancelDistance()I

    move-result p3

    if-le p1, p3, :cond_2

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getBackDistance()I

    move-result p3

    if-gt p1, p3, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->cancelSwitchApp()V

    return v3

    .line 160
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getBackDistance()I

    move-result p3

    if-le p1, p3, :cond_c

    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    if-gt p1, p3, :cond_c

    .line 161
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;->getSwipeSideGestureSwitchApp()I

    move-result p1

    if-nez p1, :cond_3

    return v3

    .line 164
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    if-nez p1, :cond_4

    .line 165
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    :cond_4
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    if-eqz p0, :cond_5

    return p2

    :cond_5
    return v3

    :cond_6
    if-ne p3, v2, :cond_c

    .line 173
    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    if-ge p1, p3, :cond_7

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getCancelDistance()I

    move-result v4

    sub-int/2addr p3, v4

    if-lt p1, p3, :cond_7

    .line 174
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->cancelSwitchApp()V

    return v2

    .line 176
    :cond_7
    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getCancelDistance()I

    move-result v4

    sub-int/2addr p3, v4

    if-ge p1, p3, :cond_8

    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getBackDistance()I

    move-result v4

    sub-int/2addr p3, v4

    if-lt p1, p3, :cond_8

    .line 177
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->cancelSwitchApp()V

    return v3

    .line 179
    :cond_8
    iget p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    invoke-static {}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getBackDistance()I

    move-result v4

    sub-int/2addr p3, v4

    if-ge p1, p3, :cond_c

    if-ltz p1, :cond_c

    .line 180
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureSwitchAppObserver;->getSwipeSideGestureSwitchApp()I

    move-result p1

    if-nez p1, :cond_9

    return v3

    .line 183
    :cond_9
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    if-nez p1, :cond_a

    .line 184
    iget-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_a
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    if-eqz p0, :cond_b

    return p2

    :cond_b
    return v3

    :cond_c
    return v2
.end method

.method private resetGestureState()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    .line 205
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    const/4 v1, 0x0

    .line 206
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSuccess:Z

    .line 207
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    .line 208
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    const-string p0, "NavBar"

    const-string v0, "ColorSideGesture"

    const-string v1, "ColorSideGestureDetector : resetGestureState"

    .line 209
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getGestureState()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSuccess:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mInterceptGesture:Z

    if-nez v0, :cond_4

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 105
    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->detectGestureState(III)I

    move-result v2

    iput v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    .line 106
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    new-instance v10, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v5, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    iget v6, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    iget v7, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    iget v8, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenHeight:I

    iget v9, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    invoke-interface {v2, v10}, Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;->onTransitionView(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSuccess:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mInterceptGesture:Z

    if-nez v0, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 115
    iget v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->detectGestureState(III)I

    move-result v2

    iput v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    .line 116
    iget-object v2, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    new-instance v10, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;

    new-instance v4, Landroid/graphics/PointF;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget v5, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    iget v6, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    iget v7, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    iget v8, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenHeight:I

    iget v9, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    invoke-interface {v2, v10}, Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;->onGestureFinished(Lcom/coloros/systemui/gesture/sidegesture/GesturePointContainer;)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    invoke-interface {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;->onUpEvent(I)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->resetGestureState()V

    .line 94
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenHeight(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenHeight:I

    .line 95
    iget v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    invoke-static {v0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getScreenWidth(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mInterceptGesture:Z

    .line 97
    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    invoke-static {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureConfiguration;->getSide(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mCallback:Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;

    iget v1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    invoke-interface {v0, v1}, Lcom/coloros/systemui/gesture/sidegesture/SideGestureCallback;->onDownEvent(I)V

    .line 124
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorSideGestureDetector : MotionEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mGestureState : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mGestureState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mSwipeSuccess : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSuccess:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mSwipeSide : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSide:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mRotation : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mRotation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mScreenHeight : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenHeight:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mScreenWidth : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mScreenWidth:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mSwitchAppState : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mInterceptGesture : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mInterceptGesture:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string v0, "ColorSideGesture"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$ColorSideGestureDetector()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwitchAppState:Z

    return-void
.end method

.method public onConfigChanged()V
    .locals 1

    .line 144
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onGestureFailed()V
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSwipeSuccess()V
    .locals 1

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureDetector;->mSwipeSuccess:Z

    return-void
.end method
