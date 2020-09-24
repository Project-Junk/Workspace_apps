.class public Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;
.super Ljava/lang/Object;
.source "ScreenResolutionHelper.java"


# static fields
.field private static final DEFAULT_RATIO:F = 1.0f

.field private static final SCREEN_SIZE_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ScreenResolutionHelper"

.field private static volatile sInstance:Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mStableScreenHeight:I

.field private mStableScreenWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenWidth:I

    .line 41
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenHeight:I

    .line 44
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mIWindowManager:Landroid/view/IWindowManager;

    .line 46
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;
    .locals 2

    .line 50
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->sInstance:Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->sInstance:Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->sInstance:Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->sInstance:Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;

    return-object p0
.end method

.method private updateStableDisplaySize()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 65
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenWidth:I

    .line 66
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenHeight:I

    return-void
.end method


# virtual methods
.method public getBaseDisplayHeight()I
    .locals 4

    .line 86
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ScreenResolutionHelper"

    const-string v3, "getBaseDisplayWidthSize: "

    .line 90
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getBaseDisplayWidth()I
    .locals 4

    .line 70
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ScreenResolutionHelper"

    const-string v3, "getBaseDisplayWidthSize: "

    .line 74
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public getDisplayChangeProportion()F
    .locals 2

    .line 115
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 118
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->updateStableDisplaySize()V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->getBaseDisplayWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDisplayChangeProportion(I)F
    .locals 2

    .line 125
    invoke-static {}, Lcom/coloros/settings/utils/bh;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 128
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->updateStableDisplaySize()V

    :cond_1
    int-to-float p1, p1

    .line 131
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenHeight:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public getStableDisplayHeight()I
    .locals 2

    .line 108
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->updateStableDisplaySize()V

    .line 111
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenHeight:I

    return v0
.end method

.method public getStableDisplayWidth()I
    .locals 2

    .line 96
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->updateStableDisplaySize()V

    .line 99
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/utils/ScreenResolutionHelper;->mStableScreenWidth:I

    return v0
.end method
