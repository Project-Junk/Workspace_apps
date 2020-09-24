.class final Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;
.super Landroid/app/IColorStatusBar$Stub;
.source "ColorCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/common/ColorCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColorStatusBar"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/ColorCommandQueue;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/common/ColorCommandQueue;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->this$0:Lcom/coloros/systemui/common/ColorCommandQueue;

    invoke-direct {p0}, Landroid/app/IColorStatusBar$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/common/ColorCommandQueue;Lcom/coloros/systemui/common/ColorCommandQueue$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;-><init>(Lcom/coloros/systemui/common/ColorCommandQueue;)V

    return-void
.end method

.method static synthetic lambda$updateNavBarVisibility$0(I)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->updateNavBarVisibility(I)V

    return-void
.end method

.method static synthetic lambda$updateNavBarVisibilityWithPkg$1(ILjava/lang/String;)V
    .locals 1

    .line 119
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->updateNavBarVisibility(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public notifyMultiWindowFocusChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->notifyMultiWindowFocusChanged(I)V

    return-void
.end method

.method public setStatusBarFunction(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->this$0:Lcom/coloros/systemui/common/ColorCommandQueue;

    invoke-static {p0}, Lcom/coloros/systemui/common/ColorCommandQueue;->access$100(Lcom/coloros/systemui/common/ColorCommandQueue;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doLock e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorCommandQueue"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public toggleSplitScreen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->getInstance()Lcom/coloros/systemui/stackdivider/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/SplitToggleHelper;->toggleSplitScreenMode(I)V

    return-void
.end method

.method public topIsFullscreen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public updateNavBarVisibility(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->this$0:Lcom/coloros/systemui/common/ColorCommandQueue;

    invoke-static {v0}, Lcom/coloros/systemui/common/ColorCommandQueue;->access$200(Lcom/coloros/systemui/common/ColorCommandQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->this$0:Lcom/coloros/systemui/common/ColorCommandQueue;

    invoke-static {p0}, Lcom/coloros/systemui/common/ColorCommandQueue;->access$300(Lcom/coloros/systemui/common/ColorCommandQueue;)Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$RigpnAwdjniTFxWJwNGLegWFBjU;

    invoke-direct {v1, p1}, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$RigpnAwdjniTFxWJwNGLegWFBjU;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateNavBarVisibilityWithPkg(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->this$0:Lcom/coloros/systemui/common/ColorCommandQueue;

    invoke-static {v0}, Lcom/coloros/systemui/common/ColorCommandQueue;->access$400(Lcom/coloros/systemui/common/ColorCommandQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/common/ColorCommandQueue$ColorStatusBar;->this$0:Lcom/coloros/systemui/common/ColorCommandQueue;

    invoke-static {p0}, Lcom/coloros/systemui/common/ColorCommandQueue;->access$500(Lcom/coloros/systemui/common/ColorCommandQueue;)Landroid/os/Handler;

    move-result-object p0

    new-instance v1, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$3_bviL3oA8uVQqa38NoaWoDMll0;

    invoke-direct {v1, p1, p2}, Lcom/coloros/systemui/common/-$$Lambda$ColorCommandQueue$ColorStatusBar$3_bviL3oA8uVQqa38NoaWoDMll0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
