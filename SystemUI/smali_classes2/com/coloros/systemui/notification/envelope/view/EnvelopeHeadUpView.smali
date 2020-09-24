.class public Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;
.super Landroid/widget/LinearLayout;
.source "EnvelopeHeadUpView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;,
        Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;
    }
.end annotation


# static fields
.field private static final CLICK_TIMEOUT_MS:J = 0x1f4L

.field private static final LANDSCAPE_DISTANCE_THRESHOLD:F = 15.0f

.field private static final PORTRAIT_DISTANCE_THRESHOLD:F = 30.0f

.field private static final SWIPE_FAILED:I = 0x2

.field private static final SWIPE_HOVER:I = -0x1

.field private static final SWIPE_NONE:I = -0x1

.field private static final SWIPE_RIGHT:I = 0x1

.field private static final SWIPE_RUNNING:I = 0x1

.field private static final SWIPE_SUCCESS:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x190L

.field private static final SWIPE_UP:I


# instance fields
.field private mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

.field private mDistanceThreshold:F

.field private mDownEventList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownTime:J

.field private mIsSwipeGesture:Z

.field private mSwipeDirection:I

.field private mSwipeStatus:I

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    .line 47
    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeDirection:I

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mIsSwipeGesture:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    .line 47
    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeDirection:I

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mIsSwipeGesture:Z

    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 8

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 155
    new-instance v7, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;FFJ)V

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private detect(ILcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;)I
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;

    iget v0, v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mX:F

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;

    iget v0, v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mY:F

    .line 136
    iget-wide v1, p2, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mTime:J

    iget-object v3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;

    iget-wide v3, p1, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mTime:J

    sub-long/2addr v1, v3

    .line 137
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/high16 p1, 0x41f00000    # 30.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41700000    # 15.0f

    .line 138
    :goto_0
    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDistanceThreshold:F

    .line 139
    iget p1, p2, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;->mY:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDistanceThreshold:F

    cmpl-float p1, v0, p1

    const-wide/16 v4, 0x190

    if-lez p1, :cond_1

    cmp-long p1, v1, v4

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeDirection:I

    return p1

    :cond_1
    cmp-long p0, v1, v4

    if-lez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v3
.end method

.method private detectSwipeStatus(Landroid/view/MotionEvent;)I
    .locals 10

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 121
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 122
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 p0, 0x2

    return p0

    .line 126
    :cond_0
    new-instance v9, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 127
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;FFJ)V

    .line 128
    invoke-direct {p0, v1, v9}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->detect(ILcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$EventInfo;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/16 v0, 0x8

    .line 163
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->setVisibility(I)V

    .line 164
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p0, 0x6

    goto/16 :goto_3

    .line 75
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->captureDown(Landroid/view/MotionEvent;I)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    return v2

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    .line 83
    iget v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mTouchDownX:I

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDistanceThreshold:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 84
    :goto_1
    iget v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mTouchDownY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDistanceThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move v1, v2

    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    .line 86
    :cond_6
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mIsSwipeGesture:Z

    .line 88
    :cond_7
    iget v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    if-eq v0, v3, :cond_9

    if-nez v0, :cond_8

    goto :goto_2

    .line 91
    :cond_8
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->detectSwipeStatus(Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    .line 92
    iget p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    if-nez p1, :cond_e

    .line 93
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

    if-eqz p1, :cond_e

    .line 94
    iget p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeDirection:I

    if-nez p0, :cond_e

    .line 95
    invoke-interface {p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;->onSwipeUp()V

    goto :goto_3

    :cond_9
    :goto_2
    return v2

    .line 106
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-gez p1, :cond_b

    move v1, v2

    :cond_b
    if-eqz v1, :cond_c

    .line 107
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mIsSwipeGesture:Z

    if-nez p1, :cond_c

    iget p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    if-eqz p1, :cond_c

    .line 108
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

    invoke-interface {p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;->onClick()V

    .line 110
    :cond_c
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    const/4 p1, -0x1

    .line 111
    iput p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    goto :goto_3

    .line 66
    :cond_d
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mIsSwipeGesture:Z

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mTouchDownX:I

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mTouchDownY:I

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownTime:J

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mDownEventList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 71
    iput v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mSwipeStatus:I

    .line 72
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->captureDown(Landroid/view/MotionEvent;I)V

    :cond_e
    :goto_3
    return v2
.end method

.method public setCallBack(Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

    return-void
.end method
