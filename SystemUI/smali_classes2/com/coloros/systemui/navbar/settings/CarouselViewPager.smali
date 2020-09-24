.class public Lcom/coloros/systemui/navbar/settings/CarouselViewPager;
.super Lcom/color/widget/ColorViewPager;
.source "CarouselViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;
    }
.end annotation


# static fields
.field private static final RATIO_1:F = 100.0f

.field private static final RATIO_2:F = 5.0f

.field public static final TAG:Ljava/lang/String; = "CarouselViewPager"

.field private static final UNLOCK_EVENT_DELAY:I = 0x12c


# instance fields
.field private mCanListViewScroll:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCarouselPlayed:Z

.field private mIsEventLock:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mParent:Landroid/view/ViewGroup;

.field private mViewChangedListener:Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/color/widget/ColorViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsCarouselPlayed:Z

    const/4 v1, 0x0

    .line 33
    iput-boolean v1, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsEventLock:Z

    .line 34
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mCanListViewScroll:Z

    .line 42
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/color/widget/ColorViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsCarouselPlayed:Z

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsEventLock:Z

    .line 34
    iput-boolean p2, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mCanListViewScroll:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$6IlFbdSahYW-GOPHkivvV4AGADk(Lcom/coloros/systemui/navbar/settings/CarouselViewPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->unlockEvent()V

    return-void
.end method

.method private unlockEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsEventLock:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v0, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mCanListViewScroll:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->unlockEvent()V

    goto/16 :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/navbar/settings/-$$Lambda$CarouselViewPager$6IlFbdSahYW-GOPHkivvV4AGADk;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/settings/-$$Lambda$CarouselViewPager$6IlFbdSahYW-GOPHkivvV4AGADk;-><init>(Lcom/coloros/systemui/navbar/settings/CarouselViewPager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    .line 82
    iget-boolean v3, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsEventLock:Z

    if-nez v3, :cond_3

    .line 83
    iget v3, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mLastMotionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 84
    iget v3, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mLastMotionY:F

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 85
    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mCanListViewScroll:Z

    .line 86
    iput-boolean v1, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsEventLock:Z

    .line 88
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mCanListViewScroll:Z

    if-eqz v0, :cond_4

    return v2

    .line 91
    :cond_4
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsCarouselPlayed:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mViewChangedListener:Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;

    if-eqz v0, :cond_7

    .line 92
    invoke-interface {v0}, Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;->onViewMoved()V

    .line 93
    iput-boolean v2, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mIsCarouselPlayed:Z

    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mLastMotionX:F

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mLastMotionY:F

    .line 69
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mCanListViewScroll:Z

    if-eqz v0, :cond_6

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 74
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 108
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/color/widget/ColorViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setNestedParent(Landroid/view/ViewGroup;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public setViewChangedListener(Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/CarouselViewPager;->mViewChangedListener:Lcom/coloros/systemui/navbar/settings/CarouselViewPager$OnViewChangedListener;

    return-void
.end method
