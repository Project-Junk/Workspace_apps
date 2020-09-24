.class Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "LocalWallpaperHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperManagerCallback"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasCallWallpaperChange:Z

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;Landroid/os/Handler;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;)V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->postUpdateWallpaper()V

    return-void
.end method

.method static synthetic access$202(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;Z)Z
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mHasCallWallpaperChange:Z

    return p1
.end method

.method static synthetic access$402(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private postUpdateWallpaper()V
    .locals 2

    const-string v0, "LocalWallpaperHelper"

    const-string v1, "postUpdateWallpaper"

    .line 460
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .locals 2

    const-string v0, "LocalWallpaperHelper"

    const-string v1, "onWallpaperChanged"

    .line 454
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->postUpdateWallpaper()V

    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mHasCallWallpaperChange:Z

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWallpaperColorsChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalWallpaperHelper"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->this$0:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->onWallpaperColorChange(Landroid/app/WallpaperColors;II)V

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_1

    .line 445
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mHasCallWallpaperChange:Z

    if-nez p1, :cond_1

    .line 448
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->postUpdateWallpaper()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 470
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    .line 489
    invoke-virtual {v0, v2, v1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->mLoader:Landroid/os/AsyncTask;

    return-void
.end method
