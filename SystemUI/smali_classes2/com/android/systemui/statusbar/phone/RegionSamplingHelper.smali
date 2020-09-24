.class public Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;
.super Ljava/lang/Object;
.source "RegionSamplingHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

.field private mCurrentMedianLuma:F

.field private mFirstSamplingAfterStart:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastMedianLuma:F

.field private final mLuminanceChangeThreshold:F

.field private final mLuminanceThreshold:F

.field private final mRegisteredSamplingBounds:Landroid/graphics/Rect;

.field private mRegisteredStopLayer:Landroid/view/SurfaceControl;

.field private mRemoveDrawRunnable:Ljava/lang/Runnable;

.field private mSamplingEnabled:Z

.field private final mSamplingListener:Landroid/view/CompositionSamplingListener;

.field private volatile mSamplingListenerRegistered:Z

.field private final mSamplingRequestBounds:Landroid/graphics/Rect;

.field private mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mUpdateSamplingListener:Ljava/lang/Runnable;

.field private mWaitingOnDraw:Z

.field private mWeakSampledView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RegionSamplingHelper$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RegionSamplingHelper$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$3;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705af

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceThreshold:F

    const v0, 0x7f0705ae

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceChangeThreshold:F

    .line 126
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->onDraw()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;F)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateMediaLuma(F)V

    return-void
.end method

.method public static synthetic lambda$pSsfVRzQ1H9WUV0xYw9vQmpq4Cw(Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method private onDraw()V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    :cond_0
    return-void
.end method

.method private postUpdateSamplingListener()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateSamplingListener:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterSamplingListener()V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 251
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    invoke-static {p0}, Landroid/view/CompositionSamplingListener;->unregister(Landroid/view/CompositionSamplingListener;)V

    :cond_0
    return-void
.end method

.method private updateMediaLuma(F)V
    .locals 2

    .line 256
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCurrentMedianLuma:F

    .line 260
    iget v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCurrentMedianLuma:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceChangeThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 267
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLuminanceThreshold:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->onRegionDarknessChanged(Z)V

    :cond_1
    return-void
.end method

.method private updateSamplingListener()V
    .locals 6

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    .line 198
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_b

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-nez v4, :cond_7

    .line 207
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    if-nez v0, :cond_6

    .line 208
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWaitingOnDraw:Z

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRemoveDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mUpdateOnDraw:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_6
    :goto_2
    move-object v0, v3

    .line 229
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    if-eq v4, v0, :cond_a

    .line 232
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->unregisterSamplingListener()V

    .line 233
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListenerRegistered:Z

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingListener:Landroid/view/CompositionSamplingListener;

    if-eqz v0, :cond_9

    .line 235
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v3

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    .line 234
    invoke-static {v1, v2, v3, v4}, Landroid/view/CompositionSamplingListener;->register(Landroid/view/CompositionSamplingListener;ILandroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredSamplingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 238
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mRegisteredStopLayer:Landroid/view/SurfaceControl;

    .line 240
    :cond_a
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    goto :goto_3

    .line 242
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->unregisterSamplingListener()V

    :goto_3
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->postUpdateSamplingListener()V

    return-void
.end method

.method public setCurrentMedianLuma(F)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    return-void
.end method

.method public start(Landroid/graphics/Rect;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->isSamplingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 148
    iput v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mLastMedianLuma:F

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mFirstSamplingAfterStart:Z

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingEnabled:Z

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    return-void
.end method

.method public updateSamplingRect()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mCallback:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mWeakSampledView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;->getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->mSamplingRequestBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingListener()V

    :cond_1
    return-void
.end method
