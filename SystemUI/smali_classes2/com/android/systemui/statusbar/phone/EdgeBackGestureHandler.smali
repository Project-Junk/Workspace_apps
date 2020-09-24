.class public Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;
    }
.end annotation


# static fields
.field private static final MAX_LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "EdgeBackGestureHandler"


# instance fields
.field private mAllowGesture:Z

.field private final mContext:Landroid/content/Context;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

.field private mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

.field private mEdgeWidth:I

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private final mFingerOffset:I

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private final mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

.field private mImeHeight:I

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field private mIsOnLeftEdge:Z

.field private mLeftInset:I

.field private final mLongPressTimeout:I

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMinArrowPosition:I

.field private final mNavBarHeight:I

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private mRightInset:I

.field private final mSamplingRect:Landroid/graphics/Rect;

.field private mThresholdCrossed:Z

.field private final mTouchSlop:F

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 117
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 122
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 138
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 143
    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 166
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    .line 167
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 172
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    .line 174
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    const/16 p2, 0xfa

    .line 173
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    const p1, 0x7f07059a

    .line 176
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mNavBarHeight:I

    const p1, 0x7f0705a0

    .line 177
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMinArrowPosition:I

    const p1, 0x7f0705a1

    .line 178
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mFingerOffset:I

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Rect;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 327
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 328
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 329
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleTouch(Landroid/view/MotionEvent;)V

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 212
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 216
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private isWithinTouchRegion(II)Z
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mNavBarHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    return v1

    .line 313
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v0, v2

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_1

    return v1

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v5, p0, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    :cond_2
    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 303
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 304
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 10

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getSystemUiStateFlags()I

    move-result v0

    .line 339
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 340
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_d

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x33

    goto :goto_2

    :cond_2
    const/16 v2, 0x35

    :goto_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setIsLeftPanel(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleTouch(Landroid/view/MotionEvent;)V

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateEdgePanelPosition(F)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 353
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    goto/16 :goto_5

    .line 355
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v3, :cond_d

    .line 356
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    if-nez v3, :cond_7

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 359
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_4
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 363
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    .line 366
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v3

    if-lez v5, :cond_6

    .line 368
    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_6
    cmpl-float v4, v3, v4

    if-lez v4, :cond_7

    .line 372
    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 373
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 375
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v3}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 382
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->handleTouch(Landroid/view/MotionEvent;)V

    if-ne v0, v2, :cond_8

    move p1, v2

    goto :goto_3

    :cond_8
    move p1, v1

    :goto_3
    if-eqz p1, :cond_a

    .line 386
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->shouldTriggerBack()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v3, 0x4

    .line 389
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    .line 390
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    .line 392
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v6, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v7, v1

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v9, v1, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    :cond_a
    if-nez p1, :cond_c

    const/4 p1, 0x3

    if-ne v0, p1, :cond_b

    goto :goto_4

    .line 398
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateSamplingRect()V

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    goto :goto_5

    .line 396
    :cond_c
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    :cond_d
    :goto_5
    return-void
.end method

.method private sendEvent(II)V
    .locals 14

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 442
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 448
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    move-object v1, p0

    .line 449
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 451
    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 453
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 436
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 437
    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateEdgePanelPosition(F)V
    .locals 3

    .line 405
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mFingerOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 406
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMinArrowPosition:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateSamplingRect()V

    return-void
.end method

.method private updateIsEnabled()V
    .locals 10

    .line 221
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 222
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-ne v0, v2, :cond_1

    return-void

    .line 225
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->disposeInputChannel()V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    if-eqz v0, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 232
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    .line 235
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    const-string v2, "EdgeBackGestureHandler"

    if-nez v0, :cond_3

    .line 236
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->removePinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 240
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 241
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    const-string v0, "Failed to unregister window manager callbacks"

    .line 244
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 248
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 250
    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 249
    invoke-virtual {v0, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 253
    :try_start_1
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 254
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 255
    invoke-interface {v0, v3, v4}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Failed to register window manager callbacks"

    .line 258
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    const-string v4, "edge-swipe"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 264
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 265
    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 268
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    .line 269
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705a4

    .line 271
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705a2

    .line 273
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/16 v7, 0x7e8

    const v8, 0x800128

    const/4 v9, -0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const v3, 0x7f110563

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    new-instance v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    :goto_2
    return-void
.end method

.method private updateSamplingRect()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 414
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v1, v2

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v1

    .line 416
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v3, v0

    .line 417
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->adjustRectToBoundingBox(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "EdgeBackGestureHandler:"

    .line 462
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 429
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavBarDetached()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavigationModeChanged(ILandroid/content/Context;)V
    .locals 0

    .line 204
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 205
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 206
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    .line 458
    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    return-void
.end method

.method public updateCurrentUserResources(Landroid/content/res/Resources;)V
    .locals 1

    .line 183
    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_dimen_config_backGestureInset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    return-void
.end method
