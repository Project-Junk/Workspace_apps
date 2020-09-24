.class public Lcom/coloros/systemui/common/helper/ScreenSizeHelper;
.super Ljava/lang/Object;
.source "ScreenSizeHelper.java"


# static fields
.field private static final SCREEN_WIDTH_NODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ScreenSizeHelper"

.field private static volatile sInstance:Lcom/coloros/systemui/common/helper/ScreenSizeHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mStableScreenWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mStableScreenWidth:I

    .line 23
    iput-object p1, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mIWindowManager:Landroid/view/IWindowManager;

    .line 25
    iget-object p1, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/common/helper/ScreenSizeHelper;
    .locals 2

    .line 29
    sget-object v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->sInstance:Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->sInstance:Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->sInstance:Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->sInstance:Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    return-object p0
.end method


# virtual methods
.method public getBaseDisplayHeightSize()I
    .locals 2

    .line 63
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 64
    iget-object p0, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 65
    iget p0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ScreenSizeHelper"

    const-string v1, "getBaseDisplayWidthSize: "

    .line 67
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getBaseDisplayWidthSize()I
    .locals 2

    .line 52
    :try_start_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mIWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 54
    iget p0, v0, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ScreenSizeHelper"

    const-string v1, "getBaseDisplayWidthSize: "

    .line 56
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getStableDisplayWidthSize()I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 43
    :cond_0
    iget v2, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mStableScreenWidth:I

    if-ne v2, v1, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 45
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mStableScreenWidth:I

    .line 47
    :cond_1
    iget p0, p0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->mStableScreenWidth:I

    return p0
.end method
