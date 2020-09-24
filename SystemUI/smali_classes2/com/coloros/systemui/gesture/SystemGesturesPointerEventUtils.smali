.class public Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;
    }
.end annotation


# static fields
.field private static final FIRST_MOVE_EVENT_GAP_TIME:I = 0xc8

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final MIN_ANGLE_SCALE:F = 1.2f

.field private static final MIN_ANGLE_SCALE_FOR_SIDE:F = 2.5f

.field private static final MIN_ANGLE_TIME:J = 0x50L

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_FAIL:I = 0x6

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_MIN_DISTANCE:I = 0x4

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x190L

.field private static final SWIPE_TIME_OUT:I = 0x5

.field private static final SWIPE_TOUCH_EVENT_GAP_TIME:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mBottomSwipeStartThreshold:I

.field private final mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mHandler:Landroid/os/Handler;

.field private mIsVerticalScreen:Z

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenHeight:F

.field private mScreenWidth:F

.field private final mSideSwipeStartThreshold:I

.field private mSwipeFireable:Z

.field private final mTopSwipeStartThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 56
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownPointerId:[I

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$1;-><init>(Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;)V

    iput-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    const-string v0, "callbacks"

    .line 88
    invoke-static {v0, p2}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    iput-object p2, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    const-string p2, "context"

    .line 89
    invoke-static {p2, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001a

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mTopSwipeStartThreshold:I

    .line 91
    invoke-static {p2, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mBottomSwipeStartThreshold:I

    .line 93
    invoke-static {p2, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0019

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSideSwipeStartThreshold:I

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mTopSwipeStartThreshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mTopSwipeStartThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mBottomSwipeStartThreshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mBottomSwipeStartThreshold:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mSideSwipeStartThreshold="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSideSwipeStartThreshold:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string p2, "SystemGestures"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    return p0
.end method

.method private captureDown(Landroid/view/MotionEvent;)V
    .locals 2

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownX:F

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownY:F

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownTime:J

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "down x="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " y="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownY:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string v0, "SystemGestures"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkSwipeFailed(FFFFJZ)Z
    .locals 3

    sub-float/2addr p2, p4

    .line 249
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p4, 0x40800000    # 4.0f

    cmpg-float p0, p0, p4

    const/4 v0, 0x1

    if-gez p0, :cond_0

    sub-float p0, p1, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_0

    const-wide/16 v1, 0x32

    cmp-long p0, p5, v1

    if-lez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-eqz p7, :cond_1

    .line 254
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const p7, 0x3f99999a    # 1.2f

    mul-float/2addr p4, p7

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_2

    const-wide/16 p3, 0x50

    cmp-long p1, p5, p3

    if-lez p1, :cond_2

    .line 255
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    return v0

    :cond_1
    sub-float/2addr p1, p3

    .line 259
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 p4, 0x40200000    # 2.5f

    mul-float/2addr p3, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p3, p2

    if-gez p2, :cond_2

    .line 260
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private detectSwipe(JFF)I
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p3

    move/from16 v4, p4

    .line 205
    iget v10, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownX:F

    .line 206
    iget v2, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownY:F

    .line 207
    iget-wide v0, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownTime:J

    sub-long v11, p1, v0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moved ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v3, "SystemGestures"

    invoke-static {v1, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget v0, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mTopSwipeStartThreshold:I

    int-to-float v1, v0

    cmpg-float v1, v2, v1

    const-wide/16 v13, 0x190

    if-gtz v1, :cond_0

    int-to-float v0, v0

    add-float/2addr v0, v2

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    cmp-long v0, v11, v13

    if-gez v0, :cond_0

    sub-float v0, v2, v4

    .line 212
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, v10, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    iget v0, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mScreenHeight:F

    iget v1, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mBottomSwipeStartThreshold:I

    int-to-float v3, v1

    sub-float/2addr v0, v3

    cmpl-float v0, v2, v0

    const/4 v15, 0x6

    if-ltz v0, :cond_2

    int-to-float v0, v1

    sub-float v0, v2, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    cmp-long v0, v11, v13

    if-gez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide v5, v11

    .line 221
    invoke-direct/range {v0 .. v7}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->checkSwipeFailed(FFFFJZ)Z

    move-result v0

    if-eqz v0, :cond_6

    return v15

    .line 224
    :cond_2
    iget v0, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mScreenWidth:F

    iget v1, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSideSwipeStartThreshold:I

    int-to-float v3, v1

    sub-float/2addr v0, v3

    cmpl-float v0, v10, v0

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    if-ltz v0, :cond_4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide v5, v11

    .line 225
    invoke-direct/range {v0 .. v7}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->checkSwipeFailed(FFFFJZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return v15

    :cond_3
    sub-float/2addr v10, v9

    float-to-double v0, v10

    .line 228
    iget v2, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSideSwipeStartThreshold:I

    int-to-double v2, v2

    div-double v2, v2, v16

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    cmp-long v0, v11, v13

    if-gez v0, :cond_6

    const/4 v0, 0x3

    return v0

    :cond_4
    int-to-float v0, v1

    cmpg-float v0, v10, v0

    if-gez v0, :cond_6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide v5, v11

    .line 232
    invoke-direct/range {v0 .. v7}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->checkSwipeFailed(FFFFJZ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v15

    :cond_5
    sub-float v0, v9, v10

    float-to-double v0, v0

    .line 235
    iget v2, v8, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSideSwipeStartThreshold:I

    int-to-double v2, v2

    div-double v2, v2, v16

    cmpl-double v0, v0, v2

    if-lez v0, :cond_6

    cmp-long v0, v11, v13

    if-gez v0, :cond_6

    const/4 v0, 0x4

    return v0

    :cond_6
    cmp-long v0, v11, v13

    if-ltz v0, :cond_7

    const/4 v0, 0x5

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 3

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->detectSwipe(JFF)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;)V
    .locals 11

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SystemGestures"

    const-string v4, "NavBar"

    if-le v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPointerEvent onSwipePointFail getPointerCount = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {v0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipePointerFail()V

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_b

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_b

    if-eq v0, v5, :cond_1

    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->captureDown(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 135
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    if-eqz v0, :cond_a

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v9, 0x32

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result p1

    if-nez p1, :cond_4

    move v1, v2

    .line 143
    :cond_4
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    if-ne p1, v2, :cond_5

    const-string p1, "Firing onSwipeFromTop"

    .line 145
    invoke-static {v4, v3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipeFromTop()V

    goto/16 :goto_0

    :cond_5
    if-ne p1, v7, :cond_6

    const-string p1, "Firing onSwipeFromBottom"

    .line 148
    invoke-static {v4, v3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipeFromBottom()V

    goto/16 :goto_0

    :cond_6
    if-ne p1, v6, :cond_7

    const-string p1, "Firing onSwipeFromRight"

    .line 151
    invoke-static {v4, v3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipeFromRight()V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    const-string p1, "Firing onSwipeFromLeft"

    .line 154
    invoke-static {v4, v3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipeFromLeft()V

    goto :goto_0

    :cond_8
    if-ne p1, v5, :cond_9

    const-string p1, "Swipe Action Time out"

    .line 157
    invoke-static {v4, v3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipeTimeOut()V

    goto :goto_0

    :cond_9
    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    const-string p1, "Swipe Action fail"

    .line 160
    invoke-static {v4, v3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipeFail()V

    goto :goto_0

    .line 165
    :cond_a
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 166
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 173
    :cond_b
    iput-boolean v1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    .line 174
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onUpOrCancel()V

    .line 176
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 177
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 118
    :cond_c
    iput-boolean v2, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    .line 119
    iput v1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mDownPointers:I

    .line 121
    invoke-direct {p0, p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->captureDown(Landroid/view/MotionEvent;)V

    .line 122
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p1}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onDown()V

    .line 124
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 125
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    :cond_d
    iget-object p1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    :goto_0
    return-void
.end method

.method public notifySwipeFail()V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mSwipeFireable:Z

    .line 297
    iget-object p0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mCallbacks:Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;

    invoke-interface {p0}, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils$Callbacks;->onSwipeFail()V

    :cond_0
    return-void
.end method

.method public setScreenSize(II)V
    .locals 2

    int-to-float v0, p1

    .line 281
    iput v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mScreenWidth:F

    int-to-float v0, p2

    .line 282
    iput v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mScreenHeight:F

    .line 283
    iget v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mScreenHeight:F

    iget v1, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mScreenWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mIsVerticalScreen:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/coloros/systemui/gesture/SystemGesturesPointerEventUtils;->mIsVerticalScreen:Z

    .line 289
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScreenSize  mScreenWidth "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mScreenHeight "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string p2, "SystemGestures"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
