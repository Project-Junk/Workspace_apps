.class public Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;
.super Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;
.source "GestureUpGuideBarController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController<",
        "Lcom/coloros/systemui/navbar/GestureUpGuideBarView;",
        ">;",
        "Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;"
    }
.end annotation


# instance fields
.field private final mDisplaySize:Landroid/graphics/Point;

.field private mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

.field private mNavGestureBarHeight:I

.field private mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;-><init>(Landroid/view/View;Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mDisplaySize:Landroid/graphics/Point;

    .line 45
    new-instance v0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController$1;-><init>(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    .line 103
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0702c2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mNavGestureBarHeight:I

    .line 104
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->updateDisplaySize()V

    .line 105
    new-instance p2, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    invoke-direct {p2, p1}, Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Landroid/graphics/Point;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mDisplaySize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mNavGestureBarHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;)Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mGuideBarViewManager:Lcom/coloros/systemui/navbar/GestureGuideBarViewManager;

    return-object p0
.end method


# virtual methods
.method public getPolicy()Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onNavStateChanged()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 176
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mView:Landroid/view/View;

    check-cast p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onPanelExpandChanged(Z)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelExpandChanged, isExpanded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/common/util/Util;->isScreenShotEditWindow(Landroid/content/Context;)Z

    move-result v0

    .line 120
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getSwipeUpGestureBarType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    .line 123
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged, rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureBarTypeObserver;->getSwipeUpGestureBarType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mView:Landroid/view/View;

    check-cast p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-virtual {p0, p1, v1}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->onRotationChanged(IZ)V

    :cond_0
    return-void
.end method

.method public startAnimation(III)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation, keyEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", gestureDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavBar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mView:Landroid/view/View;

    check-cast p0, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/navbar/GestureUpGuideBarView;->startAnimation(III)V

    :cond_0
    return-void
.end method

.method public updateDisplaySize()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->mDisplaySize:Landroid/graphics/Point;

    .line 170
    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public updateView(IZZ)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView, rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDark = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isExpanded = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NavBar"

    invoke-static {v1, v0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p3}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->onPanelExpandChanged(Z)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;->onRotationChanged(I)V

    return-void
.end method
