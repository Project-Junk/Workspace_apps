.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarWindowController"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBarHeight:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardScreenRotation:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mScreenBrightnessDoze:F

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarView:Landroid/view/ViewGroup;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 102
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 103
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v2

    .line 102
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    .line 91
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    .line 93
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 97
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 707
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 109
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 111
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mActivityManager:Landroid/app/IActivityManager;

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->shouldEnableKeyguardScreenRotation()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardScreenRotation:Z

    .line 113
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    .line 115
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 116
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 p3, 0x1

    .line 117
    invoke-interface {p1, p2, p3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 119
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarState(I)V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 242
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    return-void

    .line 250
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 251
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardScreenRotation:Z

    if-eqz p1, :cond_3

    .line 252
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    .line 254
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 2

    .line 357
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 365
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 371
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUi:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    if-eq p1, v0, :cond_2

    .line 377
    new-instance p1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$M3Xc-dNSsGU0WDXBcigLnmOuHwU;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$M3Xc-dNSsGU0WDXBcigLnmOuHwU;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0, p1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 397
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUi:Z

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->notifyStateChangedCallbacks()V

    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 432
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceDozeBrightness:Z

    if-eqz p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 435
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 318
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 321
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 3

    .line 262
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardNeedsInput:Z

    if-nez v1, :cond_3

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubbleExpanded:Z

    if-eqz v1, :cond_4

    .line 266
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 267
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 268
    :cond_4
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    .line 272
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 273
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    .line 269
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 276
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-void
.end method

.method private applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 280
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 282
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 414
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceStatusBarVisible:Z

    if-eqz p1, :cond_0

    .line 415
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 4

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    .line 292
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->TRACE:Z

    if-eqz v1, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarWindowController--applyHeight: --expanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "--state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "StatusBarWindowController"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    :cond_0
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    if-eqz p1, :cond_2

    .line 298
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

    if-eqz p1, :cond_1

    .line 299
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 306
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 2

    .line 336
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceUserActivity:Z

    if-nez p1, :cond_0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_0

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_0
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 4

    .line 196
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 202
    :goto_0
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 204
    :goto_1
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 205
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 214
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->isScreenOn:Z

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_3

    .line 217
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 221
    :goto_3
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_4

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 229
    :goto_4
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-eqz p1, :cond_6

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 233
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_7
    :goto_5
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 424
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    if-eqz p1, :cond_0

    .line 425
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 427
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 0

    .line 444
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->notTouchable:Z

    if-eqz p1, :cond_0

    .line 445
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 447
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-void
.end method

.method private applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 348
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 2

    .line 326
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    if-nez p1, :cond_0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_0
    return-void
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z
    .locals 0

    .line 311
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceCollapsed:Z

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelVisible:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    if-nez p0, :cond_0

    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setKeyguardDark(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    and-int/lit16 p1, p1, -0x2001

    .line 192
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    .line 522
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 2

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lockscreen.rot_override"

    .line 137
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f050012

    .line 138
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public add(Landroid/view/ViewGroup;I)V
    .locals 7

    .line 152
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x10

    .line 164
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "StatusBar"

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 168
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    .line 169
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->onThemeChanged()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "StatusBarWindowController state:"

    .line 622
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getBubbleExpanded()Z
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubbleExpanded:Z

    return p0
.end method

.method public getBubblesShowing()Z
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    return p0
.end method

.method public getPanelExpanded()Z
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    return p0
.end method

.method public getStatusBarView()Landroid/view/ViewGroup;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isShowingWallpaper()Z
    .locals 0

    .line 627
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isUnlockAndPanelExpanded()Z
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$apply$0$StatusBarWindowController()V
    .locals 2

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "StatusBarWindowController"

    const-string v1, "Failed to call setHasTopUi"

    .line 381
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyStateChangedCallbacks()V
    .locals 5

    const/4 v0, 0x0

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    if-eqz v1, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    .line 548
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    .line 638
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardDark(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackdropShowing(Z)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    .line 484
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBarHeight(I)V
    .locals 0

    .line 566
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 567
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    .line 479
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBubbleExpanded(Z)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubbleExpanded:Z

    .line 600
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBubblesShowing(Z)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    .line 585
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 180
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    return-void
.end method

.method public setDozing(Z)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    .line 562
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceDozeBrightness:Z

    .line 557
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForcePluginOpen(Z)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    .line 572
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceStatusBarVisible:Z

    .line 527
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceUserActivity(Z)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceUserActivity:Z

    .line 499
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceCollapsed:Z

    .line 537
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    .line 509
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    .line 489
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardNeedsInput:Z

    .line 463
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    .line 458
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    .line 453
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setNotTouchable(Z)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->notTouchable:Z

    .line 577
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    .line 542
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelVisible:Z

    .line 468
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    .line 469
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    .line 494
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->isScreenOn:Z

    .line 739
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setScrimsVisibility(I)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    .line 504
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    .line 474
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->wallpaperSupportsAmbientMode:Z

    .line 514
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method
