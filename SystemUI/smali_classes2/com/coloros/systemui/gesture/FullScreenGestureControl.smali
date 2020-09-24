.class public Lcom/coloros/systemui/gesture/FullScreenGestureControl;
.super Ljava/lang/Object;
.source "FullScreenGestureControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;
    }
.end annotation


# static fields
.field private static final DEBUG_CALLER:I = 0x4

.field private static final DECELEBRATE_TIMES:I = 0x5

.field private static final DECELERATE_FACTOR:F = 1.5f

.field private static final DECELERATE_RATIO_THRESHOLD:F = 0.3f

.field private static final DISTANCE_THRESHOLD:I = 0x96

.field private static final GESTURE_FEEDBACK_BACK_TILE:Ljava/lang/String; = "GestureBack"

.field private static final GESTURE_FEEDBACK_CENTER_TILE:Ljava/lang/String; = "GestureCenter"

.field private static final GESTURE_FEEDBACK_MENU_TILE:Ljava/lang/String; = "GestureMenu"

.field private static final LIMIT_LEFT:F = 0.33333334f

.field private static final LIMIT_RIGHT:F = 0.6666667f

.field private static final MSG_GESTURE_FEEDBACK_BACK_ANIM:I = 0x0

.field private static final MSG_GESTURE_FEEDBACK_CENTER_ANIM:I = 0x1

.field private static final MSG_GESTURE_FEEDBACK_MENU_ANIM:I = 0x2

.field private static final PATH_FACTOR_X1:F = 0.42f

.field private static final PATH_FACTOR_X2:F = 0.58f

.field private static final PATH_FACTOR_Y2:F = 0.1f

.field private static final RESPONSE_KEYEVENT_DELAYED_TIME:I = 0x0

.field public static final SWIPE_ACTION_BACK:I = 0xfa3

.field public static final SWIPE_ACTION_CENTER:I = 0xfa2

.field public static final SWIPE_ACTION_MENU:I = 0xfa1

.field public static final SWIPE_ACTION_NONE:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "FullScreenGestureControl"

.field private static final TOUCH_MOVE_PAUSE_TIME:I = 0x12c

.field private static final VELOCITY_DECELERATING_THRESHOLD:F = 0.85f

.field private static final VELOCITY_UNIT_PIXELS_PER_SECOND:I = 0x3e8


# instance fields
.field private mBackEventRunnable:Ljava/lang/Runnable;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDecelerateCount:I

.field private mDownTime:J

.field private mFeedbackAnimBack:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

.field private mFeedbackAnimCenter:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

.field private mFeedbackAnimMenu:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

.field private mFistDownPoint:Ljava/lang/String;

.field private mGestureMistouchListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHasSwipeOnceInMisTouch:Z

.field private mHomeEventRunnable:Ljava/lang/Runnable;

.field private volatile mIsNeedSendMotionToRecent:Z

.field private mLastVelocity:F

.field private mMaxVelocity:F

.field private mMenuTimerRunnable:Ljava/lang/Runnable;

.field private mMisTouchAppWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMisTouchRunnable:Ljava/lang/Runnable;

.field private mMistouchEnable:Z

.field private mNoticeMisTouchToast:Landroid/widget/Toast;

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private volatile mSwipeActionState:I

.field private mSwipeDirection:I

.field private mSwipeDistance:I

.field private mUIHandler:Landroid/os/Handler;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa0

    .line 106
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFistDownPoint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mIsNeedSendMotionToRecent:Z

    .line 121
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDistance:I

    .line 122
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDecelerateCount:I

    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mLastVelocity:F

    .line 124
    iput v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMaxVelocity:F

    .line 125
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDirection:I

    .line 129
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHasSwipeOnceInMisTouch:Z

    .line 132
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$hcgS7nhveYO_7Rk_gNF-dv5ejWM;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$hcgS7nhveYO_7Rk_gNF-dv5ejWM;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mGestureMistouchListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 146
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$9sd8yozTZXML0sU1egz-HpEYLHc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$9sd8yozTZXML0sU1egz-HpEYLHc;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMisTouchRunnable:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mUIHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$1;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$NXpSExKXAZE8TMG0QW2iw6x3QJc;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$NXpSExKXAZE8TMG0QW2iw6x3QJc;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMenuTimerRunnable:Ljava/lang/Runnable;

    .line 188
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$qJtfw3QDZqgiKQk7iKdTcjkWFCY;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$qJtfw3QDZqgiKQk7iKdTcjkWFCY;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackEventRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v0, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$VbdoPy-gRipFEtbqGzD1WBoK3ME;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/-$$Lambda$FullScreenGestureControl$VbdoPy-gRipFEtbqGzD1WBoK3ME;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHomeEventRunnable:Ljava/lang/Runnable;

    .line 203
    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 205
    iput-object p3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    .line 206
    new-instance p2, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    const-string p3, "GestureBack"

    invoke-direct {p2, p0, p1, p3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFeedbackAnimBack:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    .line 207
    new-instance p2, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    const-string p3, "GestureCenter"

    invoke-direct {p2, p0, p1, p3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFeedbackAnimCenter:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    .line 208
    new-instance p2, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    const-string p3, "GestureMenu"

    invoke-direct {p2, p0, p1, p3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;-><init>(Lcom/coloros/systemui/gesture/FullScreenGestureControl;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFeedbackAnimMenu:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    .line 211
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 214
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->initMistouchPrevention()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFeedbackAnimCenter:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFeedbackAnimBack:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/gesture/FullScreenGestureControl;)Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFeedbackAnimMenu:Lcom/coloros/systemui/gesture/FullScreenGestureControl$GestureFeedbackAnim;

    return-object p0
.end method

.method private checkSwipeAction(FI)Z
    .locals 5

    .line 273
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p2

    iget p2, p2, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    .line 275
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result v0

    const/16 v1, 0xfa2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 276
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 279
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 281
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    const v0, 0x3eaaaaab

    cmpg-float v0, p1, v0

    const/16 v3, 0xfa1

    const/16 v4, 0xfa3

    if-gez v0, :cond_4

    if-nez p2, :cond_3

    .line 284
    iput v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    goto :goto_2

    .line 287
    :cond_3
    iput v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    goto :goto_2

    :cond_4
    const v0, 0x3f2aaaab

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    if-nez p2, :cond_5

    .line 292
    iput v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    goto :goto_2

    .line 295
    :cond_5
    iput v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    goto :goto_2

    .line 299
    :cond_6
    iput v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    goto :goto_2

    .line 277
    :cond_7
    :goto_1
    iput v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    .line 303
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkSwipeAction mSwipeActionState "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " result "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " gestureDirection "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Common"

    const-string p2, "FullScreenGestureControl"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private checkSwipeAction(III)Z
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  Y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFistDownPoint:Ljava/lang/String;

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    .line 260
    iget v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mScreenWidth:F

    div-float/2addr p1, v1

    .line 261
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->isGestureUpRangePinningMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 263
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mScreenHeight:F

    int-to-float p2, p2

    mul-float/2addr p2, v0

    sub-float p2, p1, p2

    div-float p1, p2, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    .line 265
    iget p2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mScreenHeight:F

    div-float/2addr p1, p2

    .line 268
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->checkSwipeAction(FI)Z

    move-result p0

    return p0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    .line 482
    iget p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 483
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    :goto_0
    return p0
.end method

.method private isMistouchEnabled()Z
    .locals 2

    .line 750
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->getSwipeSideGestureMistouchPrevention()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 751
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    .line 752
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->getSwipeUpGestureMistouchPrevention()I

    move-result p0

    if-ne p0, v0, :cond_1

    .line 753
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private isTransitionGestureState()Z
    .locals 2

    .line 488
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    .line 489
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 490
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p0

    if-eq p0, v1, :cond_1

    .line 491
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private sendEvent(III)V
    .locals 9

    if-nez p2, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "key_menu"

    goto :goto_0

    :cond_1
    const-string v0, "key_back"

    goto :goto_0

    :cond_2
    const-string v0, "key_home"

    .line 524
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFistDownPoint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 525
    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mFistDownPoint:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->collectNavGestureState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 529
    invoke-direct/range {v3 .. v8}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->sendEvent(IIIJ)V

    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p3

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",flags:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",when:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",callers:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 537
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Common"

    const-string v4, "FullScreenGestureControl"

    .line 533
    invoke-static {v3, v4, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit16 v1, v0, 0x80

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v15

    .line 539
    :goto_0
    new-instance v1, Landroid/view/KeyEvent;

    move-object/from16 v3, p0

    iget-wide v4, v3, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDownTime:J

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    or-int/lit8 v0, v0, 0x8

    or-int/lit8 v14, v0, 0x40

    const/16 v0, 0x101

    move-object v3, v1

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    move v2, v15

    move v15, v0

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 543
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private toggleRecents()V
    .locals 3

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleRecents isGestureTransitionMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isGestureTransitionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ignoreState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getHomeMenuKeyIgnoreState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isKeyguardLocked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "FullScreenGestureControl"

    .line 498
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDownTime:J

    const/16 v0, 0xbb

    const/4 v1, 0x0

    .line 502
    invoke-direct {p0, v0, v1, v1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->sendEvent(III)V

    const/4 v2, 0x1

    .line 503
    invoke-direct {p0, v0, v2, v1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->sendEvent(III)V

    .line 505
    iput-boolean v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mIsNeedSendMotionToRecent:Z

    const/16 v0, 0xfa0

    .line 506
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    return-void
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPointerEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenGestureControl"

    const-string v2, "Common"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0xfa2

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    const/4 v6, 0x1

    if-eq v0, v6, :cond_5

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    .line 472
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mIsNeedSendMotionToRecent:Z

    goto/16 :goto_2

    .line 418
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    if-ne v0, v4, :cond_a

    iget v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDirection:I

    if-eqz v0, :cond_a

    .line 420
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mIsNeedSendMotionToRecent:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->isTransitionGestureState()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 421
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 422
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 424
    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMaxVelocity:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 425
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMaxVelocity:F

    :cond_2
    cmpl-float v3, v0, v3

    if-eqz v3, :cond_3

    .line 428
    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mLastVelocity:F

    div-float v4, v0, v4

    const v7, 0x3f59999a    # 0.85f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_3

    .line 429
    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDecelerateCount:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDecelerateCount:I

    goto :goto_0

    .line 431
    :cond_3
    iput v5, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDecelerateCount:I

    .line 434
    :goto_0
    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mScreenHeight:F

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDistance:I

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPointerEvent r:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mLastVelocity:F

    div-float v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " v:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mLastVelocity:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mLastVelocity:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mMaxVelocity:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMaxVelocity:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mDecelerateCount:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDecelerateCount:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSwipeDistance:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDistance:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 440
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDistance:I

    const/16 v1, 0x96

    if-le p1, v1, :cond_4

    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDecelerateCount:I

    const/4 v1, 0x5

    if-lt p1, v1, :cond_4

    const p1, 0x3e99999a    # 0.3f

    iget v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMaxVelocity:F

    mul-float/2addr v1, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_4

    .line 443
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->toggleRecents()V

    goto :goto_2

    .line 445
    :cond_4
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mLastVelocity:F

    goto :goto_2

    .line 453
    :cond_5
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDirection:I

    if-eqz p1, :cond_a

    .line 454
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMenuTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 455
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMenuTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    :cond_6
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    if-ne p1, v4, :cond_7

    .line 458
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHomeEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 460
    :cond_7
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    const/16 v0, 0xfa1

    if-ne p1, v0, :cond_8

    goto :goto_1

    .line 463
    :cond_8
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mIsNeedSendMotionToRecent:Z

    .line 467
    :goto_1
    iput-boolean v5, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mIsNeedSendMotionToRecent:Z

    .line 468
    iput v5, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDirection:I

    goto :goto_2

    .line 409
    :cond_9
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    if-ne p1, v4, :cond_a

    .line 410
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 411
    iput v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mLastVelocity:F

    .line 412
    iput v5, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDecelerateCount:I

    .line 413
    iput v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMaxVelocity:F

    .line 414
    iput v5, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDistance:I

    :cond_a
    :goto_2
    return-void
.end method

.method public checkFullScreenGesture(ZIIIZZ)Z
    .locals 4

    const/16 v0, 0xfa0

    .line 239
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    .line 240
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isNavSupport()Z

    move-result v0

    const-string v1, "FullScreenGestureControl"

    const-string v2, "Common"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-eqz p6, :cond_4

    .line 241
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isNavGestureMode()Z

    move-result p5

    if-eqz p5, :cond_4

    if-eqz p1, :cond_2

    .line 244
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isKeyguardLocked()Z

    move-result p1

    .line 245
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkFullScreenGesture mKeyguardManager.isKeyguardShown() "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isScreenShotEditWindow "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, v1, p5}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p6, :cond_4

    .line 249
    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->checkSwipeAction(III)Z

    move-result v3

    .line 253
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkFullScreenGesture result "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " mSwipeActionState "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public checkMistouch(I)Z
    .locals 4

    .line 309
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputEvent mistouchEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMistouchEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",hasSwipeOnce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHasSwipeOnceInMisTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",topAppPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " topIsFullScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getTopIsFullscreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    const-string v3, "FullScreenGestureControl"

    .line 310
    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-boolean v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMistouchEnable:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMisTouchAppWhiteList:Ljava/util/ArrayList;

    .line 317
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 318
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getTopIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    iget-boolean p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHasSwipeOnceInMisTouch:Z

    if-nez p1, :cond_1

    .line 320
    iput-boolean v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHasSwipeOnceInMisTouch:Z

    .line 321
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mUIHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMisTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mContext:Landroid/content/Context;

    const v0, 0x7f110600

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mNoticeMisTouchToast:Landroid/widget/Toast;

    .line 323
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mNoticeMisTouchToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v3

    .line 327
    :cond_1
    iput-boolean v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHasSwipeOnceInMisTouch:Z

    .line 328
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mUIHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMisTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mNoticeMisTouchToast:Landroid/widget/Toast;

    if-eqz p0, :cond_2

    .line 330
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_2
    return v2
.end method

.method public getSwipeActionState()I
    .locals 0

    .line 743
    iget p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    return p0
.end method

.method public handleNavGestures(Landroid/view/MotionEvent;II)Z
    .locals 6

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleNavGestures direction "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mSwipeActionState "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Common"

    const-string v1, "FullScreenGestureControl"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->checkMistouch(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 343
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    const/16 v3, 0xfa0

    const/16 v4, 0xfa2

    const/4 v5, 0x1

    if-ne p1, v4, :cond_5

    .line 344
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    move-result p1

    if-nez p1, :cond_1

    .line 345
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v4, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 348
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p1

    if-eq p1, v5, :cond_4

    .line 349
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p1

    if-eq p1, v2, :cond_4

    .line 350
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 357
    :cond_2
    iput v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    .line 358
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    move-result p1

    if-nez p1, :cond_3

    .line 359
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5, v4, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 362
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHomeEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 351
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->preloadRecentApps()V

    .line 352
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMenuTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 353
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMenuTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 365
    :cond_5
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    const/16 v4, 0xfa3

    if-ne p1, v4, :cond_7

    .line 366
    iput v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    .line 368
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    move-result p1

    if-nez p1, :cond_6

    .line 369
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v4, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 372
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 373
    :cond_7
    iget p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    const/16 v4, 0xfa1

    if-ne p1, v4, :cond_b

    .line 374
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getGestureKeysMode()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 375
    iput v3, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    .line 377
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    move-result p1

    if-nez p1, :cond_8

    .line 378
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3, v4, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 379
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 381
    :cond_8
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mBackEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 383
    :cond_9
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->preloadRecentApps()V

    .line 384
    invoke-static {}, Lcom/coloros/systemui/common/navbar/feature/NavBarFeatureOption;->isGestureFollowSupport()Z

    move-result p1

    if-nez p1, :cond_a

    .line 385
    iget-object p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v4, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 386
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 388
    :cond_a
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->toggleRecents()V

    goto :goto_2

    :cond_b
    :goto_1
    move v5, p3

    :cond_c
    :goto_2
    if-eqz v5, :cond_d

    goto :goto_3

    :cond_d
    move p2, p3

    .line 393
    :goto_3
    iput p2, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeDirection:I

    return v5
.end method

.method public initMistouchAppWhiteList()V
    .locals 2

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMisTouchAppWhiteList:Ljava/util/ArrayList;

    .line 227
    iget-object v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMisTouchAppWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.coloros.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMisTouchAppWhiteList:Ljava/util/ArrayList;

    const-string v0, "com.oppo.launcher"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initMistouchPrevention()V
    .locals 2

    .line 218
    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->initMistouchAppWhiteList()V

    .line 219
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->isMistouchEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMistouchEnable:Z

    .line 220
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mGestureMistouchListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 221
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mGestureMistouchListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 222
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mGestureMistouchListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method public synthetic lambda$new$0$FullScreenGestureControl(Z)V
    .locals 3

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMistouchEnable:Z

    .line 134
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getNavState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 136
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureMistouchPreventionObserver;->getSwipeSideGestureMistouchPrevention()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 137
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMistouchEnable:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 140
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureMistouchPreventionObserver;->getSwipeUpGestureMistouchPrevention()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 141
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mMistouchEnable:Z

    .line 144
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHasSwipeOnceInMisTouch:Z

    return-void
.end method

.method public synthetic lambda$new$1$FullScreenGestureControl()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mHasSwipeOnceInMisTouch:Z

    return-void
.end method

.method public synthetic lambda$new$2$FullScreenGestureControl()V
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMenuTimerRunnable run mSwipeActionState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Common"

    const-string v2, "FullScreenGestureControl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    const/16 v1, 0xfa2

    if-ne v0, v1, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->toggleRecents()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$3$FullScreenGestureControl()V
    .locals 3

    const/16 v0, 0xfa0

    .line 189
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDownTime:J

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, v0, v1, v1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->sendEvent(III)V

    const/4 v2, 0x1

    .line 192
    invoke-direct {p0, v0, v2, v1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->sendEvent(III)V

    return-void
.end method

.method public synthetic lambda$new$4$FullScreenGestureControl()V
    .locals 3

    const/16 v0, 0xfa0

    .line 196
    iput v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mSwipeActionState:I

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mDownTime:J

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0, v0, v1, v1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->sendEvent(III)V

    const/4 v2, 0x1

    .line 199
    invoke-direct {p0, v0, v2, v1}, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->sendEvent(III)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    int-to-float p1, p1

    .line 232
    iput p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mScreenWidth:F

    int-to-float p1, p2

    .line 233
    iput p1, p0, Lcom/coloros/systemui/gesture/FullScreenGestureControl;->mScreenHeight:F

    return-void
.end method
