.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;
.super Ljava/lang/Object;
.source "PictorialWallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallpaperLoadRequest"
.end annotation


# instance fields
.field private mGauss:Z

.field private mSync:Z

.field private mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$1;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method public getPictorialWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    return-object p0
.end method

.method public getWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    if-nez p0, :cond_1

    return-object v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFileUri()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 204
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 209
    :cond_3
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getDrawableID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 212
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    .line 216
    :cond_4
    invoke-static {p0, v1, p2}, Lcom/coloros/systemui/keyguard/util/FileUtils;->getBitmapFromFile(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 219
    :cond_5
    invoke-static {p1, p0, p2}, Lcom/coloros/systemui/keyguard/util/FileUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    return-object v0
.end method

.method public isGauss()Z
    .locals 0

    .line 176
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mGauss:Z

    return p0
.end method

.method public isSync()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mSync:Z

    return p0
.end method

.method public setGauss(Z)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mGauss:Z

    return-object p0
.end method

.method public setPictorialWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    return-object p0
.end method

.method public setSync(Z)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader$WallpaperLoadRequest;->mSync:Z

    return-object p0
.end method
