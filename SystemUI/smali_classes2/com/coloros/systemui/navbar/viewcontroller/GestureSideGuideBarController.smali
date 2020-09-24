.class public Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;
.super Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;
.source "GestureSideGuideBarController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController<",
        "Lcom/coloros/systemui/navbar/GestureSideGuideBarView;",
        ">;",
        "Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;"
    }
.end annotation


# static fields
.field public static final LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.oppo.launcher"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBackVibrateEnableListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

.field private mLauncherStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mNavGestureBarHeight:I

.field private mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/navbar/GestureSideGuideBarView;Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;-><init>(Landroid/view/View;Landroid/content/Context;)V

    const-string v0, "GestureSideGuideBarController"

    .line 47
    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$GestureSideGuideBarController$T42cDdwRJeaSzN5ydwR3CsU8kPA;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$GestureSideGuideBarController$T42cDdwRJeaSzN5ydwR3CsU8kPA;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mLauncherStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 51
    new-instance v0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController$1;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    .line 94
    new-instance v0, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$GestureSideGuideBarController$QZDOfREAf4HAVy67_qItKvxK06U;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$GestureSideGuideBarController$QZDOfREAf4HAVy67_qItKvxK06U;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mBackVibrateEnableListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 100
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702c2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mNavGestureBarHeight:I

    .line 101
    new-instance p2, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    invoke-direct {p2, p1}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    .line 102
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->hideGuideBarViewInLauncher()V

    .line 103
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->updateVirtualKeyHapticFeedbackState()V

    .line 104
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mLauncherStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 105
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mBackVibrateEnableListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mNavGestureBarHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;)Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    return-object p0
.end method

.method private onLauncherStateChanged()V
    .locals 3

    .line 177
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->getLauncherState()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->showViewWhenExitLauncher()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 181
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oppo.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->hideViewWithAnim()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    return-object p0
.end method

.method public hideGuideBarViewInLauncher()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->getCurrentTopAppTitleName()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->setCurrentTopAppTitleName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "com.oppo.launcher"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->hideViewWithAnim()V

    :cond_1
    return-void
.end method

.method public hideViewWithAnim()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->delayHideInLauncherWithAnim()V

    return-void
.end method

.method public synthetic lambda$new$0$GestureSideGuideBarController(Z)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->onLauncherStateChanged()V

    return-void
.end method

.method public synthetic lambda$new$1$GestureSideGuideBarController(Z)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->updateVirtualKeyHapticFeedbackState()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mLauncherStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method public onNavStateChanged()V
    .locals 2

    .line 111
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mView:Landroid/view/View;

    check-cast v0, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/GestureSideGuideBarView;->clearAnimation()V

    .line 113
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->hideGuideBarViewInLauncher()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->updateVirtualKeyHapticFeedbackState()V

    return-void
.end method

.method public onPanelExpandChanged(Z)V
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelExpandChanged, isExpanded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    const-string v2, "GestureSideGuideBarController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isScreenShotEditWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    .line 128
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    return-void
.end method

.method public showViewWhenExitLauncher()V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;->mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->showViewWhenExitLauncher()V

    return-void
.end method

.method public updateVirtualKeyHapticFeedbackState()V
    .locals 1

    .line 168
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 169
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBackVibrateObserver;->getSwipeSideGestureSwitchApp()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 173
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    return-void
.end method
