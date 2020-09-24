.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;
.super Ljava/lang/Object;
.source "PictorialWallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$HolderInnerClass;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictorialWallpaperLoader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;-><init>()V

    return-void
.end method

.method public static createWallpaperRequest()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;
    .locals 2

    .line 46
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$1;)V

    return-object v0
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;
    .locals 1

    .line 42
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$HolderInnerClass;->access$100()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public loadWallpaper(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "PictorialWallpaperLoader"

    if-nez p1, :cond_0

    const-string p0, "loadWallpaper, context = null"

    .line 60
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "loadWallpaper, request = null"

    .line 64
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->isSync()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->processLoadWallpaperRequest(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadWallpaper, isSuccess = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    move v0, v3

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 71
    invoke-interface {p3, p2, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;->onLoadWallpaperFinished(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperALTask;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadListener;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return v3
.end method

.method public loadWallpaperSync(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Z)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->createWallpaperRequest()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->setGauss(Z)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object p3

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p3, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->setSync(Z)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->setPictorialWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->processLoadWallpaperRequest(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p0

    return-object p0

    .line 82
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "why context is null? why? why? check it quickly!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processLoadWallpaperRequest(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 7

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processLoadWallpaperRequest Filepath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialWallpaperLoader"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 101
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 103
    invoke-virtual {p2, p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 104
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 105
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 107
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->fetchOneFromRecycleBin()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lt v6, v3, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, v4, :cond_1

    .line 110
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 111
    iput-object v5, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v2, 0x0

    .line 114
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 115
    invoke-virtual {p2, p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->getWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 117
    new-instance p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->isGauss()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->initGauss()V

    :cond_2
    const-string p1, "processLoadWallpaperRequest,src is not null!"

    .line 121
    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method
