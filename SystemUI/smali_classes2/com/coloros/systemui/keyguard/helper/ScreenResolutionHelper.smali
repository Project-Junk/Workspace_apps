.class public Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;
.super Ljava/lang/Object;
.source "ScreenResolutionHelper.java"


# static fields
.field private static final SCREEN_SIZE_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ScreenResolutionHelper"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;


# instance fields
.field private mBaseScreenHeight:I

.field private mBaseScreenWidth:I

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mStableScreenHeight:I

.field private mStableScreenWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenWidth:I

    .line 38
    iput v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenHeight:I

    .line 39
    iput v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenWidth:I

    .line 40
    iput v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenHeight:I

    .line 43
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mIWindowManager:Landroid/view/IWindowManager;

    .line 45
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 47
    new-instance p1, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper$1;-><init>(Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 53
    invoke-static {}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$ScreenResolutionHelper$zzO8yHCoQ23YlUxjDWEsFQ1Z0AE;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$ScreenResolutionHelper$zzO8yHCoQ23YlUxjDWEsFQ1Z0AE;-><init>(Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->updateBaseDisplaySize()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;
    .locals 2

    .line 59
    sget-object v0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    if-nez v0, :cond_1

    .line 60
    const-class v0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 66
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;

    return-object p0
.end method

.method private updateBaseDisplaySize()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ScreenResolutionHelper"

    const-string v3, "getBaseDisplayWidthSize: "

    .line 86
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :goto_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenWidth:I

    .line 89
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenHeight:I

    return-void
.end method

.method private updateStableDisplaySize()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 74
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenWidth:I

    .line 75
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenHeight:I

    return-void
.end method


# virtual methods
.method public getBaseDisplayHeight()I
    .locals 2

    .line 100
    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->updateBaseDisplaySize()V

    .line 103
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenHeight:I

    return p0
.end method

.method public getBaseDisplayWidth()I
    .locals 2

    .line 93
    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->updateBaseDisplaySize()V

    .line 96
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenWidth:I

    return p0
.end method

.method public getDisplayChangeProportion()F
    .locals 2

    .line 121
    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->updateBaseDisplaySize()V

    .line 124
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenWidth:I

    if-ne v0, v1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->updateStableDisplaySize()V

    .line 127
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mBaseScreenWidth:I

    int-to-float v0, v0

    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenWidth:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getStableDisplayHeight()I
    .locals 2

    .line 114
    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->updateStableDisplaySize()V

    .line 117
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenHeight:I

    return p0
.end method

.method public getStableDisplayWidth()I
    .locals 2

    .line 107
    iget v0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->updateStableDisplaySize()V

    .line 110
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mStableScreenWidth:I

    return p0
.end method

.method public synthetic lambda$new$0$ScreenResolutionHelper()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/ScreenResolutionHelper;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method
