.class public Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;
.super Ljava/lang/Object;
.source "ColorCameraAnimController.java"


# static fields
.field private static final ACTION_MOTOR_UPING:Ljava/lang/String; = "oppo.intent.action.MOTOR_UPING"

.field private static final ACTION_START_PINHOLE_ANIM:Ljava/lang/String; = "oppo.intent.action.start.PINHOLE"

.field private static final ACTION_STOP_PINHOLE_ANIM:Ljava/lang/String; = "oppo.intent.action.stop.PINHOLE"

.field private static final TAG:Ljava/lang/String; = "ColorCameraAnimController"

.field private static sInstance:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;


# instance fields
.field private mAnimTask:Landroid/os/AsyncTask;

.field private mContext:Landroid/content/Context;

.field private mWeakAnimView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->getFrontCameraAnimView()Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mWeakAnimView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mWeakAnimView:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mAnimTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private getFrontCameraAnimView()Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;
    .locals 1

    .line 80
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraMotorUpAnimView;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportPinholeFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraPinholeAnimView;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 84
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportDoublePinholeFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorCameraDoublePinholeAnimView;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;
    .locals 1

    .line 44
    sget-object v0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->sInstance:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->sInstance:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    .line 47
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->sInstance:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    return-object p0
.end method

.method public static getStartAnimAction()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oppo.intent.action.MOTOR_UPING"

    return-object v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportPinholeFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportDoublePinholeFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "oppo.intent.action.start.PINHOLE"

    return-object v0
.end method

.method public static getStopAnimAction()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportPinholeFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportDoublePinholeFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "oppo.intent.action.stop.PINHOLE"

    return-object v0
.end method

.method private initAnimationTask()V
    .locals 1

    .line 91
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mAnimTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public static isSupportFrontCameraAnim()Z
    .locals 1

    .line 55
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isNotUsedCameraMotorUpAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportPinholeFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportDoublePinholeFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancelFrontCameraAnim()V
    .locals 2

    .line 145
    invoke-static {}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->isSupportFrontCameraAnim()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ColorCameraAnimController"

    const-string v1, "cancelFrontCameraAnim"

    .line 148
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/-$$Lambda$ColorCameraAnimController$nItq-x9qNDzLCen2yFodj01epjA;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/-$$Lambda$ColorCameraAnimController$nItq-x9qNDzLCen2yFodj01epjA;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$cancelFrontCameraAnim$0$ColorCameraAnimController()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mAnimTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mAnimTask:Landroid/os/AsyncTask;

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mWeakAnimView:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 155
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    if-eqz p0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->cancelAnimation()V

    const-string p0, "ColorCameraAnimController"

    const-string v0, "cancelFrontCameraAnim, view stop animation"

    .line 158
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showFrontCameraAnim()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->isSupportFrontCameraAnim()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->canShowFrontCameraAnim()Z

    move-result v0

    const-string v1, "ColorCameraAnimController"

    if-nez v0, :cond_1

    const-string p0, "combine unlock in screen off, not showing"

    .line 134
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "showFrontCameraAnim"

    .line 137
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->initAnimationTask()V

    .line 139
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->mAnimTask:Landroid/os/AsyncTask;

    if-eqz p0, :cond_2

    .line 140
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method
