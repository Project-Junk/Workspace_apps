.class public Lcom/coloros/systemui/navbar/FirstLandScapeManager;
.super Ljava/lang/Object;
.source "FirstLandScapeManager.java"


# static fields
.field private static sFirstLandScapeManager:Lcom/coloros/systemui/navbar/FirstLandScapeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToastLocationMarginTop:I

.field private final mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mUIHandler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->initToastLocation()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/coloros/systemui/navbar/FirstLandScapeManager;
    .locals 2

    const-class v0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->sFirstLandScapeManager:Lcom/coloros/systemui/navbar/FirstLandScapeManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/coloros/systemui/navbar/FirstLandScapeManager;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/navbar/FirstLandScapeManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->sFirstLandScapeManager:Lcom/coloros/systemui/navbar/FirstLandScapeManager;

    .line 46
    :cond_0
    sget-object p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->sFirstLandScapeManager:Lcom/coloros/systemui/navbar/FirstLandScapeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initToastLocation()V
    .locals 3

    .line 50
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 53
    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mToastLocationMarginTop:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$notifyRotationChanged$0$FirstLandScapeManager()V
    .locals 3

    .line 66
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/navbar/observer/SwipeUpGestureFollowRotationObserver;->isGestureUpRangePinningMode()Z

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v0, 0x7f110567

    goto :goto_0

    :cond_0
    const v0, 0x7f110566

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x30

    .line 69
    iget p0, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mToastLocationMarginTop:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 70
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public declared-synchronized notifyRotationChanged(I)V
    .locals 3

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->isNavGestureMode()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 59
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 63
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getUpGestureEnterLandScapeTipsNumber(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/systemui/navbar/-$$Lambda$FirstLandScapeManager$fToI_a3WOR8dCGXp36OnrRwAkDI;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/-$$Lambda$FirstLandScapeManager$fToI_a3WOR8dCGXp36OnrRwAkDI;-><init>(Lcom/coloros/systemui/navbar/FirstLandScapeManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    iget-object v1, p0, Lcom/coloros/systemui/navbar/FirstLandScapeManager;->mContext:Landroid/content/Context;

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->setUpGestureEnterLandScapeTipsNumber(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
