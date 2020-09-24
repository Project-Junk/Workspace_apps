.class public Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;
.super Landroid/widget/RelativeLayout;
.source "BlackScreenOverlay.java"

# interfaces
.implements Lcom/coloros/systemui/blackscreen/widget/IOverlay;


# static fields
.field private static final TAG:Ljava/lang/String; = "BlackScreenOverlay"

.field private static final THRESHOLD_EXIT:F = 700.0f


# instance fields
.field private mAnimExit:Landroid/animation/Animator;

.field private mAnimRestore:Landroid/animation/Animator;

.field private mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

.field private mClockView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private final mEmergencyReceiver:Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

.field private final mHighTempeProtectObserver:Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private final mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

.field private mNotification:Lcom/coloros/systemui/blackscreen/controller/INotification;

.field private mOrientation:I

.field private mPtrId:I

.field private mRawX:F

.field private mRawY:F

.field private mScreenSize:Landroid/graphics/Point;

.field private final mShutdownReceiver:Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mTipsView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    invoke-direct {v0}, Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mShutdownReceiver:Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    .line 77
    new-instance v0, Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    invoke-direct {v0}, Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mEmergencyReceiver:Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    .line 78
    new-instance v0, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    invoke-direct {v0}, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mHighTempeProtectObserver:Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    .line 79
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 80
    new-instance v0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$bGj6hDVO6q0uzSri3tFqEzzbiMY;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$bGj6hDVO6q0uzSri3tFqEzzbiMY;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 85
    new-instance v0, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$MpMZmqsmAzNVvmZthbcYaoz4wk0;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$MpMZmqsmAzNVvmZthbcYaoz4wk0;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 91
    new-instance v0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 100
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance p2, Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    invoke-direct {p2}, Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mShutdownReceiver:Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    .line 77
    new-instance p2, Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    invoke-direct {p2}, Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mEmergencyReceiver:Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    .line 78
    new-instance p2, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    invoke-direct {p2}, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mHighTempeProtectObserver:Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    .line 79
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 80
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$bGj6hDVO6q0uzSri3tFqEzzbiMY;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$bGj6hDVO6q0uzSri3tFqEzzbiMY;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 85
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$MpMZmqsmAzNVvmZthbcYaoz4wk0;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$MpMZmqsmAzNVvmZthbcYaoz4wk0;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 91
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 105
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p2, Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    invoke-direct {p2}, Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mShutdownReceiver:Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    .line 77
    new-instance p2, Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    invoke-direct {p2}, Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mEmergencyReceiver:Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    .line 78
    new-instance p2, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    invoke-direct {p2}, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mHighTempeProtectObserver:Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    .line 79
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    .line 80
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$bGj6hDVO6q0uzSri3tFqEzzbiMY;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$bGj6hDVO6q0uzSri3tFqEzzbiMY;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 85
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$MpMZmqsmAzNVvmZthbcYaoz4wk0;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/-$$Lambda$BlackScreenOverlay$MpMZmqsmAzNVvmZthbcYaoz4wk0;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 91
    new-instance p2, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$1;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    iput-object p2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    .line 110
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)Lcom/coloros/systemui/blackscreen/controller/IBrightness;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    return-object p0
.end method

.method private cancelAllAnim()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimExit:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 356
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimRestore:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    .line 357
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private destroy()V
    .locals 5

    .line 283
    invoke-direct {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->cancelAllAnim()V

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mNotification:Lcom/coloros/systemui/blackscreen/controller/INotification;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Lcom/coloros/systemui/blackscreen/controller/INotification;->release()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onDestroy()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/coloros/systemui/common/receiver/AbstractReceiver;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mShutdownReceiver:Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mEmergencyReceiver:Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->unregister(Landroid/content/Context;[Lcom/coloros/systemui/common/receiver/AbstractReceiver;)V

    .line 291
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mHighTempeProtectObserver:Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;->unregister(Landroid/content/Context;)V

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 293
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 294
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->removeListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    .line 295
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenSettingsValueProxy;->setBlackScreenModeState(Landroid/content/Context;I)V

    .line 296
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 297
    sput-boolean v3, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->sBlackScreenEnable:Z

    return-void
.end method

.method private exit(F)V
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit() start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "BlackScreenOverlay"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenAnimatorUtil;->getExitAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimExit:Landroid/animation/Animator;

    .line 317
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimExit:Landroid/animation/Animator;

    new-instance v0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$2;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 328
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimExit:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenSettingsValueProxy;->setBlackScreenModeState(Landroid/content/Context;I)V

    .line 268
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mShutdownReceiver:Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/blackscreen/receivers/ShutdownReceiver;->register(Landroid/content/Context;)V

    .line 269
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mEmergencyReceiver:Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/coloros/systemui/blackscreen/receivers/EmergencyReceiver;->register(Landroid/content/Context;Landroid/os/Handler;)V

    .line 270
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mHighTempeProtectObserver:Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;->register(Landroid/content/Context;Z)V

    .line 271
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    .line 272
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 273
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mMultiUserListener:Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V

    .line 274
    new-instance v0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    .line 275
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    invoke-interface {v0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onInit()V

    .line 276
    new-instance v0, Lcom/coloros/systemui/blackscreen/controller/NotificationController;

    invoke-direct {v0}, Lcom/coloros/systemui/blackscreen/controller/NotificationController;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mNotification:Lcom/coloros/systemui/blackscreen/controller/INotification;

    .line 277
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mNotification:Lcom/coloros/systemui/blackscreen/controller/INotification;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    invoke-interface {v0, v2, v3}, Lcom/coloros/systemui/blackscreen/controller/INotification;->init(Landroid/content/Context;Lcom/coloros/systemui/blackscreen/controller/IBrightness;)V

    .line 278
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 279
    sput-boolean v1, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->sBlackScreenEnable:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method

.method private move(FF)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->setTranslationY(F)V

    return-void
.end method

.method private restore(F)V
    .locals 3

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore() start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "BlackScreenOverlay"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 334
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onDark()V

    return-void

    .line 337
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenAnimatorUtil;->getRestoreAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimRestore:Landroid/animation/Animator;

    .line 338
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimRestore:Landroid/animation/Animator;

    new-instance v0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$3;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$3;-><init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimRestore:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private touch()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenOverlay"

    const-string v2, "touch()"

    .line 301
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mAnimRestore:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mBrightness:Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onLight()V

    return-void
.end method


# virtual methods
.method public getComponent()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public init(Landroid/view/WindowManager;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenOverlay"

    const-string v2, "init()"

    .line 197
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowManager:Landroid/view/WindowManager;

    .line 199
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mScreenSize:Landroid/graphics/Point;

    .line 200
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->setVisibility()V

    .line 201
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->initWindowParams()V

    .line 202
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->updateWindowParams()V

    return-void
.end method

.method public initWindowParams()V
    .locals 3

    const-string v0, "BlackScreenOverlay"

    const-string v1, "Statusbar"

    const-string v2, "initWindowParams()"

    .line 219
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 221
    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x90a

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v2, -0x7efef980

    .line 222
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 228
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 230
    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v2, 0x1

    .line 231
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const v2, 0x800033

    .line 232
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 233
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 234
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 235
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    sget v0, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {p0, v0}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method public synthetic lambda$new$0$BlackScreenOverlay()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$BlackScreenOverlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "reason"

    .line 86
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "call"

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 127
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenOverlay"

    const-string v2, "onAttachedToWindow()"

    .line 128
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->init()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 141
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenOverlay"

    const-string v2, "onConfigurationChanged()"

    .line 142
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 145
    iget v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mOrientation:I

    if-ne v0, p1, :cond_1

    return-void

    .line 146
    :cond_1
    iput p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mOrientation:I

    .line 147
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->updateWindowParams()V

    .line 148
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 134
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenOverlay"

    const-string v2, "onDetachedFromWindow()"

    .line 135
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->destroy()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a016c

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mClockView:Landroid/view/View;

    const v0, 0x7f0a05a0

    .line 122
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mTipsView:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 156
    iget v3, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mRawY:F

    sub-float v3, v2, v3

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 158
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 188
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 183
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mPtrId:I

    if-ne v4, p1, :cond_5

    .line 184
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->getTranslationY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->restore(F)V

    goto :goto_0

    .line 167
    :cond_1
    iget p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mPtrId:I

    if-ne v4, p1, :cond_5

    .line 168
    iget p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mRawX:F

    sub-float/2addr v1, p1

    invoke-direct {p0, v1, v3}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->move(FF)V

    goto :goto_0

    .line 173
    :cond_2
    iget p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mPtrId:I

    if-ne v4, p1, :cond_5

    .line 174
    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->getTranslationY()F

    move-result p1

    const/high16 v0, 0x442f0000    # 700.0f

    add-float/2addr v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 176
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->exit(F)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct {p0, p1}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->restore(F)V

    goto :goto_0

    .line 161
    :cond_4
    iput v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mRawX:F

    .line 162
    iput v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mRawY:F

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mPtrId:I

    .line 164
    invoke-direct {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->touch()V

    :cond_5
    :goto_0
    return v5
.end method

.method public setVisibility()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenOverlay"

    const-string v2, "setVisibility()"

    .line 207
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f06

    .line 208
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->setSystemUiVisibility(I)V

    return-void
.end method

.method public updateWindowParams()V
    .locals 4

    const-string v0, "Statusbar"

    const-string v1, "BlackScreenOverlay"

    const-string v2, "updateWindowParams()"

    .line 241
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 244
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mOrientation:I

    .line 245
    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 246
    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 247
    iget v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mClockView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->mTipsView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    const v3, 0x7f07011c

    goto :goto_1

    :cond_1
    const v3, 0x7f07011b

    .line 250
    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-eqz v2, :cond_2

    const v1, 0x7f07011f

    goto :goto_2

    :cond_2
    const v1, 0x7f07011e

    .line 251
    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method
