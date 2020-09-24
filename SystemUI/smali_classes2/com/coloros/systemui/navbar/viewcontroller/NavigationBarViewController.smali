.class public Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;
.super Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;
.source "NavigationBarViewController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController$VisibleType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController<",
        "Lcom/android/systemui/statusbar/phone/NavigationBarView;",
        ">;",
        "Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;"
    }
.end annotation


# static fields
.field private static final FLAG_INPUT_METHOD_SHOW:I = 0x4

.field private static final FLAG_KEYGUARD_SHOW:I = 0x1

.field private static final FLAG_SCREEN_ON:I = 0x8

.field private static final FLAG_SCREEN_SHOT_SHOW:I = 0x2

.field private static final LAUNCHER_TITLE:Ljava/lang/String; = "com.oppo.launcher/com.oppo.launcher.Launcher"

.field private static final SYSTEM_PROPERTY_NAV_BAR_HIDE:Ljava/lang/String; = "oppo.hide.navigationbar"


# instance fields
.field private mChildModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mForceUpdateNavBarVisNextTime:Z

.field private mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

.field private mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

.field private mIsDragState:Z

.field private mIsIconsDark:Z

.field private mIsPanelExpanded:Z

.field private mIsSplitScreen:Z

.field private mLastNavBarVisibility:I

.field private mNavBarVisibility:I

.field private mNavStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mRotation:I

.field private mSwipeSideGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mSwipeUpGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

.field private mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;-><init>(Landroid/view/View;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsPanelExpanded:Z

    .line 71
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsIconsDark:Z

    .line 72
    iput p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mRotation:I

    .line 73
    iput p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavBarVisibility:I

    .line 74
    iput p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mLastNavBarVisibility:I

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mForceUpdateNavBarVisNextTime:Z

    .line 77
    invoke-static {}, Lcom/coloros/common/util/Util;->isInMultiWindowMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsSplitScreen:Z

    .line 78
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->isDragState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsDragState:Z

    .line 80
    new-instance p1, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$nkYOivXcQYk493cG7TI8xgR2v4g;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$nkYOivXcQYk493cG7TI8xgR2v4g;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;)V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 81
    new-instance p1, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$2RcsYIRMTWJGgJdLxqIrtH4QVAA;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$2RcsYIRMTWJGgJdLxqIrtH4QVAA;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;)V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mChildModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 262
    new-instance p1, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$RPMpdEGuRn2JUMvTNzf5BD9GbgE;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$RPMpdEGuRn2JUMvTNzf5BD9GbgE;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;)V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mSwipeUpGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 263
    new-instance p1, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$jp5FpUFA8GuMBnhVMh755CCKXt4;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/navbar/viewcontroller/-$$Lambda$NavigationBarViewController$jp5FpUFA8GuMBnhVMh755CCKXt4;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;)V

    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mSwipeSideGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    .line 85
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mWM:Landroid/view/WindowManager;

    .line 86
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 87
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mChildModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method private canGestureUpGuideBarShow()Z
    .locals 1

    .line 728
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isRootViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isGestureUpGuideBarShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private disableVirtualKeyImmersive()V
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v1, "NavBar"

    const-string v2, "disableVirtualKeyImmersive"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->isImmersiveEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->setImmersiveEnable(Z)V

    :cond_0
    return-void
.end method

.method private dispatchIconsDarkChanged(Z)V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchIconsDarkChanged, isDark = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsIconsDark:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isRootViewVisible()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 584
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    return-void
.end method

.method private forceHideHideIcon()Z
    .locals 2

    .line 144
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->isSplitScreenMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsDragState:Z

    if-eqz v0, :cond_1

    return v1

    .line 150
    :cond_1
    iget p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavBarVisibility:I

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private getViewLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 189
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getViewLayoutParams, isGestureBarShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7e3

    const v6, 0x840068

    const/4 v7, -0x3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 202
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 204
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    const-string v0, "NavigationBar"

    .line 207
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 208
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz p1, :cond_1

    .line 210
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 212
    :cond_1
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return-object p0
.end method

.method private hideGuideBarInLauncher(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.oppo.launcher/com.oppo.launcher.Launcher"

    .line 596
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isGestureSideGuideBarShown()Z
    .locals 1

    .line 723
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 724
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->getSwipeSideGestureBarType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGestureUpGuideBarShown()Z
    .locals 2

    .line 718
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 719
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getSwipeUpGestureBarType()I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRootViewVisible()Z
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTempExitedImmersive()Z
    .locals 2

    .line 546
    invoke-static {}, Lcom/coloros/systemui/stackdivider/util/SplitScreenUtils;->isSplitScreenMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 549
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavBarVisibility:I

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    return v1

    :cond_1
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private onChildrenModeChanged()V
    .locals 2

    .line 333
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-nez v0, :cond_1

    return-void

    .line 336
    :cond_1
    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->isImmersiveEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->setImmersiveEnable(Z)V

    .line 338
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarWindowState()V

    .line 339
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateVirtualKeyHideIcon()V

    :cond_2
    :goto_0
    return-void
.end method

.method private setForceTransparentBackground(Z)V
    .locals 2

    .line 163
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceTransparentBackground, forceTransparentBackground = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->setForceTransparentBackground(Z)V

    return-void
.end method

.method private updateBarTransitions()V
    .locals 1

    .line 558
    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsSplitScreen:Z

    if-nez p0, :cond_0

    .line 559
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->notifyBarTransitionsSplitScreenChange(Z)V

    :cond_0
    return-void
.end method

.method private updateGestureSideGuideBar()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v1, "NavBar"

    const-string v2, "updateGestureSideGuideBar"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    if-nez v0, :cond_0

    .line 381
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v0, "mGestureSideGuideBarController is null"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 384
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 385
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v0, "current nav state is not gesture side"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeSideGestureBarType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 392
    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    :goto_1
    return-void
.end method

.method private updateGestureUpGuideBar()V
    .locals 4

    .line 354
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    const-string v1, "NavBar"

    if-nez v0, :cond_0

    .line 355
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v0, "updateGestureUpGuideBar() mGestureUpGuideBarController is null"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 358
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 359
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v0, "updateGestureUpGuideBar() current nav state is not gesture up"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getSwipeUpGestureBarType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    invoke-direct {p0, v1, v3}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    .line 368
    invoke-direct {p0, v0, v3}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    goto :goto_0

    .line 365
    :cond_4
    invoke-direct {p0, v1, v1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    :goto_0
    return-void
.end method

.method private updateImmersiveStatus()V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isTempExitedImmersive()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->updateImmersiveStatus(Z)V

    .line 541
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarWindowState()V

    .line 542
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateVirtualKeyHideIcon()V

    return-void
.end method

.method private updateNavBarVisibility(IZ)V
    .locals 3

    .line 514
    iget v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavBarVisibility:I

    and-int/lit8 v1, v0, 0x2

    const-string v2, "NavBar"

    if-eqz v1, :cond_0

    .line 515
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    .line 516
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string p1, "show nav bar because screen shot is on top"

    invoke-static {v2, p0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    .line 521
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string p1, "show nav bar because input method is on top"

    invoke-static {v2, p0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    and-int/lit8 p1, v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_2

    .line 525
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->disableVirtualKeyImmersive()V

    .line 526
    invoke-direct {p0, v1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    .line 527
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string p1, "hide nav bar because keyguard is on top"

    invoke-static {v2, p0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    and-int/lit8 p1, v0, 0x8

    if-nez p1, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->disableVirtualKeyImmersive()V

    .line 532
    invoke-direct {p0, v1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    .line 533
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string p1, "hide nav bar because screen off"

    invoke-static {v2, p0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 536
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViewByNavMode()V

    return-void
.end method

.method private updateNavBarWindowState()V
    .locals 4

    .line 231
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "oppo.hide.navigationbar"

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavBarHideState(Landroid/content/Context;I)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->isImmersiveEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavBarHideState(Landroid/content/Context;I)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavBarHideState(Landroid/content/Context;I)V

    goto :goto_0

    .line 242
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setNavBarHideState(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private updateViewByNavMode()V
    .locals 2

    .line 564
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateGestureSideGuideBar()V

    goto :goto_0

    .line 570
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateGestureUpGuideBar()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 567
    invoke-direct {p0, v0, v0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V

    :goto_0
    return-void
.end method

.method private updateViewLayout()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v1, "NavBar"

    const-string v2, "updateViewLayout"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isRootViewVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mWM:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mWM:Landroid/view/WindowManager;

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isGestureUpGuideBarShown()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isGestureSideGuideBarShown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 177
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->getViewLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updateViews(IZ)V
    .locals 6

    .line 419
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViews, visibleType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isBgTransparent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->setVisible(Z)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-eqz v0, :cond_1

    .line 427
    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->setVisible(Z)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    if-eqz v0, :cond_2

    .line 430
    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;->setVisible(Z)V

    :cond_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    goto :goto_0

    .line 450
    :cond_3
    iget-object v3, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    if-eqz v3, :cond_7

    .line 451
    invoke-interface {v3, v2}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;->setVisible(Z)V

    goto :goto_0

    .line 442
    :cond_4
    iget-object v3, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-eqz v3, :cond_5

    .line 443
    invoke-interface {v3, v2}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->setVisible(Z)V

    .line 445
    :cond_5
    iget-object v2, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-eqz v2, :cond_7

    .line 446
    iget v3, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mRotation:I

    iget-boolean v4, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsIconsDark:Z

    iget-boolean v5, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsPanelExpanded:Z

    invoke-interface {v2, v3, v4, v5}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->updateView(IZZ)V

    goto :goto_0

    .line 436
    :cond_6
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateVirtualKeyHideIcon()V

    .line 437
    iget-object v3, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz v3, :cond_7

    .line 438
    invoke-interface {v3, v2}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->setVisible(Z)V

    :cond_7
    :goto_0
    if-eq p1, v0, :cond_8

    .line 458
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_8
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViewLayout()V

    .line 461
    invoke-direct {p0, p2}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->setForceTransparentBackground(Z)V

    .line 462
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarWindowState()V

    return-void
.end method

.method private updateVirtualKeyHideIcon()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->isImmersiveEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->forceHideHideIcon()Z

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateHideIcon(ZZ)V

    .line 139
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVirtualKeyHideIcon forceHide:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isImmersiveEnable:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBar"

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchPanelExpandChanged(Z)V
    .locals 3

    .line 649
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchPanelExpandChanged, isExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsPanelExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 651
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->onPanelExpandChanged(Z)V

    .line 652
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isRootViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 653
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    .line 661
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-eqz p0, :cond_4

    .line 662
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->onPanelExpandChanged(Z)V

    goto :goto_0

    .line 656
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz p0, :cond_4

    .line 657
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->onPanelExpandChanged(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public dispatchRotationChanged(I)V
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchRotationChanged, rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mRotation:I

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 625
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->onRotationChanged(I)V

    .line 626
    invoke-static {}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->getInstance()Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->onRotationChanged(I)V

    .line 627
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isRootViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 628
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    .line 636
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-eqz p0, :cond_4

    .line 637
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->onRotationChanged(I)V

    goto :goto_0

    .line 631
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz p0, :cond_4

    .line 632
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->onRotationChanged(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public dispatchSplitScreenChanged(Z)V
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSplitScreenChanged, exists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsSplitScreen:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 676
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsSplitScreen:Z

    .line 677
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateImmersiveStatus()V

    .line 678
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateBarTransitions()V

    return-void
.end method

.method public dispatchTopWindowChanged()V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v1, "NavBar"

    const-string v2, "dispatchTopWindowChanged"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isRootViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 603
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-eqz v0, :cond_3

    .line 611
    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsPanelExpanded:Z

    invoke-interface {v0, p0}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->onPanelExpandChanged(Z)V

    goto :goto_0

    .line 607
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateVirtualKeyHideIcon()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;
    .locals 2

    .line 117
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    invoke-interface {p0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    invoke-interface {p0}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;->getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object p0

    return-object p0

    .line 122
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    invoke-interface {p0}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object p0

    return-object p0

    .line 120
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    invoke-interface {p0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/view/View;)V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v1, "NavBar"

    const-string v2, "init"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->getInstance()Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->updatePolicy(Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;)V

    .line 289
    invoke-static {}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->getInstance()Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->updateView(Landroid/view/View;)V

    .line 290
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-nez p1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    invoke-interface {p1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeguradLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViews(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 299
    :catch_0
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v0, "isKeyguardLocked remoteException"

    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViewByNavMode()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$NavigationBarViewController(Z)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->onNavStateChanged()V

    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarViewController(Z)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->onChildrenModeChanged()V

    return-void
.end method

.method public synthetic lambda$new$2$NavigationBarViewController(Z)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateGestureUpGuideBar()V

    return-void
.end method

.method public synthetic lambda$new$3$NavigationBarViewController(Z)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateGestureSideGuideBar()V

    return-void
.end method

.method public onBarTransition(I)V
    .locals 0

    .line 185
    invoke-static {}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->getInstance()Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->onBarTransition(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 219
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavStateListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 220
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mChildModeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 221
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mSwipeUpGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    .line 222
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mSwipeSideGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->removeListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method public onDragStateChanged(Z)V
    .locals 1

    .line 306
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsDragState:Z

    .line 307
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-nez p1, :cond_1

    return-void

    .line 310
    :cond_1
    invoke-interface {p1}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->isImmersiveEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->setImmersiveEnable(Z)V

    .line 312
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarWindowState()V

    .line 313
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateVirtualKeyHideIcon()V

    goto :goto_0

    .line 320
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateVirtualKeyHideIcon()V

    :goto_0
    return-void
.end method

.method public onNavStateChanged()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->onNavStateChanged()V

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;->onNavStateChanged()V

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->onNavStateChanged()V

    .line 109
    invoke-static {}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->getInstance()Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->updatePolicy(Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;)V

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavStateChanged, navState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->disableVirtualKeyImmersive()V

    .line 112
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateViewByNavMode()V

    return-void
.end method

.method public onPanelExpandChanged(Z)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelExpandChanged, isExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsPanelExpanded:Z

    .line 101
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mIsIconsDark:Z

    invoke-direct {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->dispatchIconsDarkChanged(Z)V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged, rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iput p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mRotation:I

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/navbar/FirstLandScapeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->notifyRotationChanged(I)V

    return-void
.end method

.method public setGestureSideGuideBarController(Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    .line 279
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mSwipeSideGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/navbar/observer/SwipeSideGestureBarTypeObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method public setGestureUpGuideBarController(Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    .line 273
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mSwipeUpGestureBarTypeListener:Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method

.method public setVirtualKeyController(Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    return-void
.end method

.method public startGestureUpGuideBarAnimation(II)V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startGestureUpGuideBarAnimation, keyEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->canGestureUpGuideBarShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    iget v0, v0, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->mShortcutsCenterGestureDirection:I

    invoke-interface {p0, p1, p2, v0}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->startAnimation(III)V

    :cond_0
    return-void
.end method

.method public toggleVirtualKeyImmersive()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->TAG:Ljava/lang/String;

    const-string v1, "NavBar"

    const-string v2, "toggleVirtualKeyImmersive"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->isImmersiveEnable()Z

    move-result v0

    .line 690
    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->toggleImmersive(Z)V

    .line 691
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarWindowState()V

    .line 692
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateVirtualKeyHideIcon()V

    :cond_0
    return-void
.end method

.method public updateNavBarVisibility(I)V
    .locals 3

    .line 467
    iput p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavBarVisibility:I

    .line 468
    iget p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mLastNavBarVisibility:I

    iget v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavBarVisibility:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mForceUpdateNavBarVisNextTime:Z

    if-nez p1, :cond_0

    return-void

    .line 471
    :cond_0
    iget p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mNavBarVisibility:I

    iput p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mLastNavBarVisibility:I

    const/4 p1, 0x0

    .line 472
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mForceUpdateNavBarVisNextTime:Z

    .line 473
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isGestureSideGuideBarShown()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 491
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarVisibility(IZ)V

    goto :goto_0

    .line 482
    :cond_3
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->isGestureUpGuideBarShown()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 485
    :cond_4
    invoke-direct {p0, v1, v1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarVisibility(IZ)V

    goto :goto_0

    .line 475
    :cond_5
    invoke-direct {p0, p1, p1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarVisibility(IZ)V

    .line 476
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateImmersiveStatus()V

    goto :goto_0

    .line 479
    :cond_6
    invoke-direct {p0, p1, p1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarVisibility(IZ)V

    :goto_0
    return-void
.end method

.method public updateNavBarVisibility(ILjava/lang/String;)V
    .locals 2

    .line 500
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->updateNavBarVisibility(I)V

    .line 501
    invoke-static {p2}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;->setCurrentTopAppTitleName(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 503
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    if-eqz p1, :cond_2

    .line 504
    invoke-direct {p0, p2}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->hideGuideBarInLauncher(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    invoke-static {}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/navbar/observer/LauncherStateObserver;->getLauncherState()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 505
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    invoke-interface {p1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;->hideViewWithAnim()V

    goto :goto_1

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    invoke-interface {p1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;->showViewWhenExitLauncher()V

    .line 509
    :goto_1
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;->mForceUpdateNavBarVisNextTime:Z

    :cond_2
    return-void
.end method
