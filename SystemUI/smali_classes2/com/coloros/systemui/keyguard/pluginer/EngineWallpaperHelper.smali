.class public Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;
.super Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;
.source "EngineWallpaperHelper.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "EngineWallpaperHelper"


# instance fields
.field private mColorKeyguardWatcher:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

.field private mEngineWallpaperInfo:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;

.field private mGaussDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mColorKeyguardWatcher:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    .line 36
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mColorKeyguardWatcher:Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher;->addCallback(Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->disable()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mGaussDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mGaussDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getWallpaperInfo()Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mEngineWallpaperInfo:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mEngineWallpaperInfo:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mEngineWallpaperInfo:Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;

    return-object p0
.end method

.method public bridge synthetic getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->getWallpaperInfo()Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperInfo;

    move-result-object p0

    return-object p0
.end method

.method public isEnable()Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->isEnableLockScreen()Z

    move-result p0

    return p0
.end method

.method public isEnableLockScreen()Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onSetBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 77
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mGaussDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 78
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 79
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 83
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mGaussDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 85
    :cond_1
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mGaussDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 88
    :cond_2
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->mGaussDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz p1, :cond_3

    .line 91
    sget-object v0, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x2

    .line 94
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/pluginer/EngineWallpaperHelper;->onWallpaperChange(I)V

    return-void
.end method

.method public type()Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
    .locals 0

    .line 65
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Engine:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    return-object p0
.end method
