.class public Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCombineUnlockDozeViewCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardCombineUnlockDozeViewCtrl"

.field private static final TALK_TO_SF_CODE_21003:I = 0x520b

.field public static final TYPE_SYSTEM_DOZE_FACE_VIEW:I = 0x90b


# instance fields
.field private mAlpha:I

.field private mAnimRunnable:Ljava/lang/Runnable;

.field protected mCombineUnlockRunning:Z

.field private mCompose:Z

.field protected mContext:Landroid/content/Context;

.field private mDozeFaceView:Landroid/widget/ImageView;

.field private mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field protected mFaceFpCombineUnlock:Z

.field private mHeight:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMarginTop:I

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mMainHandler:Landroid/os/Handler;

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070400

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mWidth:I

    .line 58
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mHeight:I

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mMarginTop:I

    const-string v0, "window"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mWindowManager:Landroid/view/WindowManager;

    :cond_1
    :goto_0
    return-void
.end method

.method private startDozeFaceViewAnim()V
    .locals 4

    const-string v0, "KeyguardCombineUnlockDozeViewCtrl"

    const-string v1, "startDozeFaceViewAnim"

    .line 84
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->composeDozeViewLayerImpl(Z)V

    .line 86
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-nez v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->getFaceDetectingAnim()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 91
    iget v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mAlpha:I

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->setAlpha(I)V

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 97
    iget v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 98
    iget v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 99
    iget v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mMarginTop:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v2, 0x31

    .line 100
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 101
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, -0x1

    .line 102
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v2, 0x90b

    .line 103
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 104
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x10

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v2, "OnScreenFingerprintFaceDozeView"

    .line 109
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "has already been added to the window manager."

    .line 113
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    return-void
.end method

.method private stopDozeFaceViewAnim()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardCombineUnlockDozeViewCtrl"

    const-string v1, "stopDozeFaceViewAnim"

    .line 124
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    .line 128
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public composeDozeViewLayerImpl(Z)V
    .locals 3

    .line 168
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mCompose:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "KeyguardCombineUnlockDozeViewCtrl"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeDozeViewLayerImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-string v1, "OnScreenFingerprintFaceDozeView"

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 176
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/16 v1, 0x520b

    .line 177
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->talkToSurfaceFlinger(ILandroid/os/Parcel;)V

    .line 178
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mCompose:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected execInMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 149
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 150
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public synthetic lambda$updateDozeFaceViewAnim$0$KeyguardCombineUnlockDozeViewCtrl(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 74
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mCombineUnlockRunning:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->startDozeFaceViewAnim()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->stopDozeFaceViewAnim()V

    :goto_0
    return-void
.end method

.method public resetDozeFaceView()V
    .locals 2

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->composeDozeViewLayerImpl(Z)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->updateDozeFaceViewAnim(Z)V

    .line 134
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 139
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "KeyguardCombineUnlockDozeViewCtrl"

    const-string v1, "has already been removed"

    .line 141
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mDozeFaceView:Landroid/widget/ImageView;

    .line 145
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mAlpha:I

    .line 158
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceDetectingDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public updateDozeFaceViewAnim(Z)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mFaceFpCombineUnlock:Z

    if-nez v0, :cond_1

    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mAnimRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    :cond_2
    new-instance v0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockDozeViewCtrl$bXmAmdMmj_gSx9zche0InSSWwV0;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockDozeViewCtrl$bXmAmdMmj_gSx9zche0InSSWwV0;-><init>(Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;Z)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mAnimRunnable:Ljava/lang/Runnable;

    .line 80
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->mAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->execInMainThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
