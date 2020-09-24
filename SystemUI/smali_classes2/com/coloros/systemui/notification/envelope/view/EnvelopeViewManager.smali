.class public Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;
.super Ljava/lang/Object;
.source "EnvelopeViewManager.java"


# static fields
.field private static final ANIM_TIME:J = 0xc8L

.field private static final DEFAULT_DISPLAY_DENSITY_DPI:I = 0x1e0

.field private static final DELAY_REMOVE_HEAD_UP_VIEW_TIME:I = 0x1388

.field private static final MAX_TRANSLATION:F = 500.0f

.field private static final TAG:Ljava/lang/String; = "EnvelopeViewManager"


# instance fields
.field private mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

.field private mClicked:Z

.field private mContent:Ljava/lang/String;

.field private mCurrentContext:Landroid/content/Context;

.field private mCurrentUid:I

.field private mEncrypted:Z

.field private mEnvelopeFrame:Landroid/widget/FrameLayout;

.field private mEnvelopeHeadUpVisible:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeadUpView:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

.field private mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

.field private mInAlphaAnim:Landroid/animation/ValueAnimator;

.field private mInAnimatorRunning:Z

.field private mInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mInTranslateAnim:Landroid/animation/ValueAnimator;

.field private mInitialDisplayDensity:I

.field private mIsChangingDensity:Z

.field private mIsLandOutAnimation:Z

.field private mIsLandScapeWindow:Z

.field private mLock:Ljava/lang/Object;

.field private mOriginContext:Landroid/content/Context;

.field private mOutAlphaAnim:Landroid/animation/ValueAnimator;

.field private mOutAnimatorRunning:Z

.field private mOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

.field private mOutTranslateAnim:Landroid/animation/ValueAnimator;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPortraitScreenHeight:I

.field private mPortraitScreenWidth:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

.field private mShowHeadUpViewRunnable:Ljava/lang/Runnable;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTitle:Ljava/lang/String;

.field private mUpdateHeadUpViewRunnable:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeHeadUpVisible:Z

    .line 87
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsLandScapeWindow:Z

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    .line 97
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorRunning:Z

    .line 98
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorRunning:Z

    .line 100
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEncrypted:Z

    .line 101
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRegistered:Z

    .line 102
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mClicked:Z

    .line 103
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsLandOutAnimation:Z

    .line 104
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsChangingDensity:Z

    .line 105
    iput v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInitialDisplayDensity:I

    .line 108
    new-instance v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$1;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mShowHeadUpViewRunnable:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$2;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$3;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mUpdateHeadUpViewRunnable:Ljava/lang/Runnable;

    .line 664
    new-instance v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$13;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

    .line 738
    new-instance v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$14;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$14;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    .line 144
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOriginContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    .line 146
    iput-object p3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 147
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowManager:Landroid/view/WindowManager;

    .line 148
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->initViewAndParams()V

    .line 149
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->addWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->playInAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/view/WindowManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->updateViewVisibility(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorRunning:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorRunning:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->removeWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->pipReply()V

    return-void
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->splitScreenReply(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsLandOutAnimation:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->setClicked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->playOutAnimation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/app/PendingIntent;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->onDensityChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeHeadUpVisible:Z

    return p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->applyViewAndParams(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)Landroid/widget/FrameLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private addWindow()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeHeadUpVisible:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeHeadUpVisible:Z

    .line 156
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 157
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->updateViewVisibility(I)V

    .line 158
    invoke-direct {p0, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->applyViewAndParams(I)V

    .line 159
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private applyOriginContext()V
    .locals 5

    .line 196
    iget v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInitialDisplayDensity:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 198
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 199
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInitialDisplayDensity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Notification"

    const-string v3, "EnvelopeViewManager"

    const-string v4, "Envelop--setDefaultDisplay getInitialDisplayDensity, e "

    .line 201
    invoke-static {v2, v3, v4, v0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x1e0

    .line 202
    iput v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInitialDisplayDensity:I

    .line 205
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 206
    iget v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInitialDisplayDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 207
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOriginContext:Landroid/content/Context;

    .line 208
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOriginContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0166

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    .line 209
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0249

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpView:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    .line 210
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpView:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->setCallBack(Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;)V

    .line 211
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    const v2, 0x7f0a024a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    .line 212
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCallBack:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->setCallBack(Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView$CallBack;)V

    .line 213
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsChangingDensity:Z

    return-void
.end method

.method private applyViewAndParams(I)V
    .locals 9

    const/16 v0, 0x8

    const/16 v1, 0x31

    const v2, 0x7f070364

    const/4 v3, -0x2

    const v4, 0x7f0a01bc

    const v5, 0x7f0a05a1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    .line 471
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpView:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {p1, v5}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 472
    iget-object v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpView:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {v5, v4}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 474
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-boolean v5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEncrypted:Z

    if-eqz v5, :cond_0

    .line 477
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mContent:Ljava/lang/String;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 482
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOriginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 483
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 484
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOriginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070368

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 485
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 487
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    const v7, 0x7f0a0139

    invoke-virtual {p1, v7}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 488
    iget-object v7, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {v7, v5}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 489
    iget-object v7, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {v7, v4}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 490
    iget-object v7, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    const v8, 0x7f0a012d

    invoke-virtual {v7, v8}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 491
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v8, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v8, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mContent:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-boolean v4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEncrypted:Z

    if-eqz v4, :cond_2

    .line 495
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 497
    :cond_2
    invoke-direct {p0, v7, p1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->updateReplyButton(Landroid/widget/Button;Landroid/widget/LinearLayout;)V

    .line 499
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 500
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOriginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 501
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 502
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOriginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070369

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 503
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    return-void
.end method

.method private initAnimation()V
    .locals 5

    const/4 v0, 0x2

    .line 217
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInTranslateAnim:Landroid/animation/ValueAnimator;

    .line 218
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInTranslateAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 219
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$tXmP1JhXnFAS0EeROm_EtjHZtaU;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$tXmP1JhXnFAS0EeROm_EtjHZtaU;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$4;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$4;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAlphaAnim:Landroid/animation/ValueAnimator;

    .line 247
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 248
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$sBeAWigN00k29Lt-brfVxign99U;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$sBeAWigN00k29Lt-brfVxign99U;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$5;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$5;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 275
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 276
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$6;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    .line 299
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 301
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$agiA9ZwYXvHVXTbS9dffw0kTTJI;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$agiA9ZwYXvHVXTbS9dffw0kTTJI;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$7;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$7;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

    .line 328
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 329
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 330
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$u4msNfJBpmfzw1b6fLkmvXuFe3I;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$u4msNfJBpmfzw1b6fLkmvXuFe3I;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$8;

    invoke-direct {v4, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$8;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 358
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$UtZkuFkTJ7VcBt4G_846WU0N4Qw;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/envelope/view/-$$Lambda$EnvelopeViewManager$UtZkuFkTJ7VcBt4G_846WU0N4Qw;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$9;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$9;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 384
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 385
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 386
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$10;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        -0x3d380000    # -100.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x3d380000    # -100.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43fa0000    # 500.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initViewAndParams()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 176
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 177
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mPortraitScreenWidth:I

    .line 178
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mPortraitScreenHeight:I

    .line 179
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 180
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7de

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 181
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 182
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1840728

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 190
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "ColorOSEnvelopeHeadUpView"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->applyOriginContext()V

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onDensityChanged()V
    .locals 2

    const/4 v0, 0x1

    .line 653
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsChangingDensity:Z

    .line 654
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->setEnvelopeShow(Z)V

    .line 658
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 659
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->removeWindow()V

    .line 660
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->applyOriginContext()V

    return-void
.end method

.method private pipReply()V
    .locals 5

    const-string v0, "com.tencent.mm"

    .line 595
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 596
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.LAUNCHER"

    .line 597
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 598
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 599
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 602
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra_window_mode"

    .line 603
    sget v4, Lcom/color/zoomwindow/ColorZoomWindowManager;->WINDOWING_MODE_ZOOM:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    invoke-static {}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getInstance()Lcom/color/zoomwindow/ColorZoomWindowManager;

    move-result-object v3

    iget p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {v3, v1, v2, p0, v0}, Lcom/color/zoomwindow/ColorZoomWindowManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Notification"

    const-string v1, "EnvelopeViewManager"

    const-string v2, "pipReply wrong"

    .line 607
    invoke-static {v0, v1, v2, p0}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private playInAnimation()V
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorRunning:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private playOutAnimation()V
    .locals 2

    .line 525
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorRunning:Z

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsLandOutAnimation:Z

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsLandOutAnimation:Z

    .line 534
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private removeWindow()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeHeadUpVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 167
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeHeadUpVisible:Z

    .line 168
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 170
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setClicked(Z)V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mClicked:Z

    .line 544
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private shouldShowFloatReply()Z
    .locals 0

    .line 646
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldSuppress()Z
    .locals 5

    .line 689
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForCall()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "EnvelopeViewManager"

    const-string v3, "Notification"

    if-eqz v0, :cond_0

    const-string p0, "Envelop--suppress for call"

    .line 690
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 693
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v4, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForClock()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Envelop--suppress for clock"

    .line 694
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 698
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Envelop--suppress for screen off"

    .line 699
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 702
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Envelop--suppress for keyguard"

    .line 703
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 706
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Envelop--suppress for children mode"

    .line 707
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 710
    :cond_4
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mIsChangingDensity:Z

    if-eqz p0, :cond_5

    const-string p0, "Envelop--suppress for density changed"

    .line 711
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private showHeadUpView(Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;IZ)V
    .locals 0

    .line 441
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 442
    iget-object p2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 443
    :try_start_0
    iput-boolean p6, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEncrypted:Z

    .line 444
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mTitle:Ljava/lang/String;

    .line 445
    iput-object p3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mContent:Ljava/lang/String;

    .line 446
    iput p5, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentUid:I

    .line 447
    iput-object p4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mPendingIntent:Landroid/app/PendingIntent;

    .line 448
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeHeadUpVisible:Z

    if-eqz p1, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->updateHeadUpView()V

    goto :goto_0

    .line 451
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mShowHeadUpViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private splitScreenReply(Ljava/lang/String;)V
    .locals 0

    .line 612
    const-class p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method

.method private updateHeadUpView()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mUpdateHeadUpViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateReplyButton(Landroid/widget/Button;Landroid/widget/LinearLayout;)V
    .locals 3

    const/4 v0, 0x0

    .line 548
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->shouldShowFloatReply()Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f11064c

    .line 550
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 551
    new-instance p2, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$11;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$11;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 559
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iget v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentUid:I

    const-string v2, "com.tencent.mm"

    .line 560
    invoke-virtual {v0, v2, v1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->shouldEnvelopeShowSplitReply(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f11064d

    .line 561
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 562
    new-instance p2, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$12;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager$12;-><init>(Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 571
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    .line 573
    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updateViewVisibility(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 509
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpView:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->setVisibility(I)V

    .line 510
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->setVisibility(I)V

    goto :goto_0

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpView:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->setVisibility(I)V

    .line 513
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHeadUpViewLand:Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeHeadUpView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isClickHeadUp()Z
    .locals 0

    .line 538
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mClicked:Z

    return p0
.end method

.method public synthetic lambda$initAnimation$0$EnvelopeViewManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mInTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 222
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public synthetic lambda$initAnimation$1$EnvelopeViewManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 250
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 251
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public synthetic lambda$initAnimation$2$EnvelopeViewManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 303
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public synthetic lambda$initAnimation$3$EnvelopeViewManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 331
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mOutLandTranslateAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 332
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public synthetic lambda$initAnimation$4$EnvelopeViewManager(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 360
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 361
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mEnvelopeFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public onReceiveEnvelope(Landroid/app/Notification;IIZZ)V
    .locals 10

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->setClicked(Z)V

    .line 413
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->shouldSuppress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    if-nez p5, :cond_3

    .line 420
    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->isWechatEncrypted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 428
    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->extractUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 429
    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->extractContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 432
    :cond_2
    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->extractContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 421
    :cond_3
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Envelope--onReceiveEnvelope: needEncrypted:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ", WechatEncrypted:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->isWechatEncrypted(Ljava/lang/String;)Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Notification"

    const-string v0, "EnvelopeViewManager"

    .line 421
    invoke-static {p5, v0, p4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object p4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    const p5, 0x7f1108ba

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object p4, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    const p5, 0x7f1108b9

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v0

    move-object v6, v1

    move v9, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v9, p5

    move-object v4, v0

    move-object v6, v1

    .line 437
    :goto_2
    iget-object v7, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v3, p0

    move v5, p2

    move v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->showHeadUpView(Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;IZ)V

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRegistered:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 720
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRegistered:Z

    .line 721
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 722
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "oppo.intent.config.density.change"

    .line 723
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 726
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeHeadUpViewImmediately()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRemoveHeadUpViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 732
    iput-boolean v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mRegistered:Z

    .line 733
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mCurrentContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/view/EnvelopeViewManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 735
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
