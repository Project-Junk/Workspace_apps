.class public Lcom/coloros/systemui/navbar/ColorNavigationBarController;
.super Lcom/android/systemui/shared/system/RotationWatcher;
.source "ColorNavigationBarController.java"

# interfaces
.implements Lcom/coloros/systemui/navbar/IColorNavigationBarController;
.implements Lcom/coloros/systemui/stackdivider/ISplitScreenListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

.field private mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

.field private mMainHandler:Landroid/os/Handler;

.field private mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

.field private mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/RotationWatcher;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/coloros/systemui/navbar/ColorNavigationBarController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/navbar/ColorNavigationBarController$1;-><init>(Lcom/coloros/systemui/navbar/ColorNavigationBarController;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 78
    iput-object p1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    .line 79
    iget-object p1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p1, p0}, Lcom/android/systemui/stackdivider/Divider;->addCallback(Lcom/coloros/systemui/stackdivider/ISplitScreenListener;)V

    .line 80
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mMainHandler:Landroid/os/Handler;

    .line 81
    invoke-static {}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/DragStateReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mDragStateReceiver:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/receiver/DragStateReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->enable()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/navbar/ColorNavigationBarController;)Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    instance-of v1, v0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    instance-of v0, p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;

    if-eqz v0, :cond_1

    .line 189
    check-cast p0, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/navbar/viewcontroller/AbstractNavController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isGestureUpGuideBarShown()Z
    .locals 3

    .line 162
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getNavState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getSwipeUpGestureBarType(Landroid/content/Context;)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$onDockedStackExistsChanged$0$ColorNavigationBarController(Z)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->dispatchSplitScreenChanged(Z)V

    return-void
.end method

.method public onBarTransition(I)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->onBarTransition(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/navbar/-$$Lambda$ColorNavigationBarController$KAS925lR8o3lJoRpbYRErjF0LVc;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/navbar/-$$Lambda$ColorNavigationBarController$KAS925lR8o3lJoRpbYRErjF0LVc;-><init>(Lcom/coloros/systemui/navbar/ColorNavigationBarController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPanelExpandChanged(Z)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz p0, :cond_0

    .line 128
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->dispatchPanelExpandChanged(Z)V

    :cond_0
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz p0, :cond_0

    .line 196
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->dispatchRotationChanged(I)V

    :cond_0
    return-void
.end method

.method public onTopWindowChanged()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->dispatchTopWindowChanged()V

    :cond_0
    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->onDestroy()V

    .line 91
    :cond_0
    new-instance v0, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/coloros/systemui/navbar/viewcontroller/NavigationBarViewController;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    .line 93
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVirtualKeyView()Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v1}, Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;->onDestroy()V

    .line 97
    :cond_1
    new-instance v1, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/coloros/systemui/navbar/viewcontroller/VirtualKeyController;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    .line 99
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getGestureUpGuideBarView()Lcom/coloros/systemui/navbar/GestureUpGuideBarView;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    if-eqz v1, :cond_2

    .line 101
    invoke-interface {v1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;->onDestroy()V

    .line 103
    :cond_2
    new-instance v1, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/coloros/systemui/navbar/viewcontroller/GestureUpGuideBarController;-><init>(Lcom/coloros/systemui/navbar/GestureUpGuideBarView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getGestureSideGuideBarView()Lcom/coloros/systemui/navbar/GestureSideGuideBarView;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    if-eqz v1, :cond_3

    .line 107
    invoke-interface {v1}, Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;->onDestroy()V

    .line 109
    :cond_3
    new-instance v1, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;

    iget-object v2, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/coloros/systemui/navbar/viewcontroller/GestureSideGuideBarController;-><init>(Lcom/coloros/systemui/navbar/GestureSideGuideBarView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mVirtualKeyController:Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;

    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->setVirtualKeyController(Lcom/coloros/systemui/navbar/viewcontroller/IVirtualKeyController;)V

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mGestureUpGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;

    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->setGestureUpGuideBarController(Lcom/coloros/systemui/navbar/viewcontroller/IGestureUpGuideBarController;)V

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mGestureSideGuideBarController:Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;

    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->setGestureSideGuideBarController(Lcom/coloros/systemui/navbar/viewcontroller/IGestureSideGuideBarController;)V

    .line 114
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->init(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public startGestureUpGuideBarAnimation(II)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->startGestureUpGuideBarAnimation(II)V

    :cond_0
    return-void
.end method

.method public toggleVirtualKeyImmersive()V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz p0, :cond_0

    .line 149
    invoke-interface {p0}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->toggleVirtualKeyImmersive()V

    :cond_0
    return-void
.end method

.method public updateNavBarVisibility(I)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz p0, :cond_0

    .line 135
    invoke-interface {p0, p1}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->updateNavBarVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateNavBarVisibility(ILjava/lang/String;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/coloros/systemui/navbar/ColorNavigationBarController;->mNavigationBarController:Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;

    if-eqz p0, :cond_0

    .line 142
    invoke-interface {p0, p1, p2}, Lcom/coloros/systemui/navbar/viewcontroller/INavigationBarController;->updateNavBarVisibility(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
