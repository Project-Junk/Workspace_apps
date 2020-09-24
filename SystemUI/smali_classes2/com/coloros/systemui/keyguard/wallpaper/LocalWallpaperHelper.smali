.class public Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;
.super Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;
.source "LocalWallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;
    }
.end annotation


# static fields
.field private static final COMMON_TAG:Ljava/lang/String; = "common"

.field private static final CUSTOM_PARTITION_WALLPAPER_FILE_DIR:Ljava/lang/String; = "/oppo_custom/decouping_wallpaper"

.field private static final CUSTOM_TAG:Ljava/lang/String; = "custom"

.field private static final IS_RESTORED_WALLPAPER:Ljava/lang/String; = "is_restored_wallpaper"

.field private static final PHONE_COLOR_DEFAULT_THEME_MAPS_PATH:Ljava/lang/String; = "default/phone_color_default_theme_maps.xml"

.field private static final PRODUCT_PARTITION_WALLPAPER_FILE_DIR:Ljava/lang/String; = "/oppo_product/decouping_wallpaper"

.field private static final RESTORE_WALLPAPER_DELAY:I = 0xbb8

.field private static final SP_NAME:Ljava/lang/String; = "lock_screen_sp_name"

.field private static final TAG:Ljava/lang/String; = "LocalWallpaperHelper"

.field private static final TAG_DEFAULT_LOCK_WALLPAPER_NAME:Ljava/lang/String; = "default_lock_wallpaper_name"

.field private static final WALLPAPER_XML_FILE:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field private mCache:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

.field private mDisable:Z

.field private mInfo:Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mLoadWallpaperRunnable:Ljava/lang/Runnable;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;-><init>(Landroid/content/Context;)V

    .line 253
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$7l79UPGKS54BQaVkLgG_E1W9634;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$7l79UPGKS54BQaVkLgG_E1W9634;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mLoadWallpaperRunnable:Ljava/lang/Runnable;

    .line 81
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-string v0, "wallpaper"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 84
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object p1

    .line 85
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCallback:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCallback:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    invoke-interface {p1, v0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fuck, System dead ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalWallpaperHelper"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->postUpdateWallpaper()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->loadWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCache:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private getBuiltInDrawableFromWps()Landroid/graphics/Bitmap;
    .locals 3

    .line 297
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->isNeedGetBuildInDrawable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "LocalWallpaperHelper"

    if-nez v0, :cond_0

    const-string p0, "no need to get build in drawable"

    .line 298
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 301
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 302
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    const-string v0, "getBuiltInDrawable ok"

    .line 303
    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    const/16 p0, 0x2e

    .line 369
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-le p0, v0, :cond_1

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_1

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private getWallpaperFromProject(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    .line 311
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaperResource()Ljava/lang/String;

    move-result-object p0

    .line 312
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWallpaperFromProject path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocalWallpaperHelper"

    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWallpaperFromProject e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private getWallpaperFromWS(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "getWallpaperFromWS, close pd error .e = "

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-eqz p4, :cond_1

    .line 265
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    .line 267
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getWallpaperFromWS lockWallpaperUserId = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "LocalWallpaperHelper"

    invoke-static {p4, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_3

    :try_start_1
    const-string p1, "getWallpaperFromWS, pd is null"

    .line 273
    invoke-static {p4, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    .line 282
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1

    .line 276
    :cond_3
    :try_start_3
    invoke-static {p0, p2}, Lcom/coloros/systemui/keyguard/util/FileUtils;->getBitmapFromFileDescriptor(Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_4

    .line 282
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p0, v1

    goto :goto_4

    :catch_3
    move-exception p1

    move-object p0, v1

    .line 278
    :goto_2
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getWallpaperFromWS, Exception . e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_4

    .line 282
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    const-string p0, "getWallpaperFromWS, return null!"

    .line 289
    invoke-static {p4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz p0, :cond_6

    .line 282
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 284
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_6
    :goto_5
    throw p1
.end method

.method private getWallpaperResource()Ljava/lang/String;
    .locals 3

    .line 328
    new-instance v0, Ljava/io/File;

    const-string v1, "wallpaper_info.xml"

    const-string v2, "/oppo_custom/decouping_wallpaper"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaperResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/oppo_product/decouping_wallpaper"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaperResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "LocalWallpaperHelper"

    const-string v0, "parseWallpaperFile no wallpaper file exist"

    .line 337
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWallpaperResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    new-instance v1, Ljava/io/File;

    const-string v2, "custom"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->traversWallpaperFile(Ljava/io/File;Ljava/util/HashMap;)V

    .line 344
    new-instance v1, Ljava/io/File;

    const-string v2, "common"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->traversWallpaperFile(Ljava/io/File;Ljava/util/HashMap;)V

    .line 346
    new-instance v1, Ljava/io/File;

    const-string v2, "wallpaper_info.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->parseWallpaperXml(Ljava/io/File;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNeedGetBuildInDrawable()Z
    .locals 2

    .line 411
    new-instance p0, Ljava/io/File;

    const-string v0, "/oppo_product/decouping_wallpaper"

    const-string v1, "default/phone_color_default_theme_maps.xml"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private isRestoreWPS()Z
    .locals 3

    .line 427
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "lock_screen_sp_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_restored_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isSetLiveWallpaper()Z
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->loadWallpaperFromWps()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->isSetLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getBuiltInDrawableFromWps()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "LocalWallpaperHelper"

    if-nez v0, :cond_3

    .line 128
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-string v3, "loadWallpaperDrawable from WS is null, need load from project"

    .line 129
    invoke-static {v2, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaperFromProject(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 134
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mSelectedUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_3

    const-string v0, "loadWallpaperDrawable from product is null, need load from system flag"

    .line 135
    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mSelectedUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_5

    .line 144
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isLightWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 145
    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->addScrim(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    .line 147
    :goto_0
    new-instance v4, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;

    invoke-direct {v4, p0, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/-$$Lambda$LocalWallpaperHelper$XlDMPqOLDyF6neNp9dzzWGJ6U8M;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;Landroid/graphics/Bitmap;Z)V

    const-wide/16 v0, 0xbb8

    invoke-static {v4, v0, v1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThreadDelay(Ljava/lang/Runnable;J)V

    .line 153
    new-instance p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    invoke-direct {p0, v3}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-string v0, "loadWallpaperDrawable success"

    .line 155
    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    return-object v1
.end method

.method private loadWallpaperFromWps()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
    .locals 4

    .line 163
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCurrentUserId:I

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mSelectedUser:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaperFromWS(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 167
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isLightWallpaper(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->addScrim(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 168
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const-string p0, "LocalWallpaperHelper"

    const-string v1, "loadWallpaperFromWps success"

    .line 170
    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseWallpaperXml(Ljava/io/File;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p0, 0x0

    const-string v0, "LocalWallpaperHelper"

    if-eqz p1, :cond_4

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 382
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 383
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 384
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 385
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    .line 389
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default_lock_wallpaper_name"

    .line 390
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", path: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 402
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWallpaperFileArray e = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    const-string p1, "parseWallpaperXml wallpaper xml file not exist!!"

    .line 378
    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private restoreWallpaperToWPS(Landroid/graphics/Bitmap;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->isRestoreWPS()Z

    move-result v0

    const-string v1, "LocalWallpaperHelper"

    if-eqz v0, :cond_1

    const-string p0, "restoreWallpaperToWPS is already to restore"

    .line 181
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v2, 0x2

    .line 185
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 184
    invoke-virtual {v0, v2, v3}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    const-string p0, "restoreWallpaperToWPS already has wallpaper, no need restore again"

    .line 187
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    const-string v0, "restoreWallpaperToWPS"

    .line 191
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 193
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    move-object v3, p1

    .line 192
    invoke-virtual/range {v2 .. v7}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I

    .line 194
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->saveStateForRestoreWPS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreWallpaperToWPS e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveStateForRestoreWPS()V
    .locals 2

    .line 420
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mContext:Landroid/content/Context;

    const-string v0, "lock_screen_sp_name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 421
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_restored_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private traversWallpaperFile(Ljava/io/File;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LocalWallpaperHelper"

    if-eqz p1, :cond_3

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 355
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "traversWallpaperFile target is empty"

    .line 357
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 361
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "traversWallpaperFile target not exist"

    .line 352
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 222
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->disable()V

    const-string v0, "LocalWallpaperHelper"

    const-string v1, "disable"

    .line 223
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mDisable:Z

    return-void
.end method

.method public enable()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->enable()V

    .line 215
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->postUpdateWallpaper()V

    const-string v0, "LocalWallpaperHelper"

    const-string v1, "enable"

    .line 216
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mDisable:Z

    return-void
.end method

.method public getWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCache:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public bridge synthetic getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mInfo:Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mInfo:Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mInfo:Lcom/coloros/systemui/keyguard/wallpaper/LocalKeyguardWallpaperInfo;

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->hide()V

    .line 230
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mDisable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCache:Landroid/graphics/drawable/Drawable;

    const-string p0, "LocalWallpaperHelper"

    const-string v0, "release lock wallpaper cache"

    .line 232
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isAutoPlaySwitchOn()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnableLockScreen()Z
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->isEnable()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$loadWallpaperDrawable$0$LocalWallpaperHelper(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->restoreWallpaperToWPS(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$LocalWallpaperHelper()V
    .locals 2

    const-string v0, "LocalWallpaperHelper"

    const-string v1, "postUpdateWallpaper start"

    .line 254
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->loadWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCache:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onUserUnlock()V
    .locals 0

    .line 243
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper;->onUserUnlock()V

    .line 244
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mCallback:Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;

    if-eqz p0, :cond_0

    .line 245
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;->access$000(Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper$WallpaperManagerCallback;)V

    :cond_0
    return-void
.end method

.method public postUpdateWallpaper()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mLoadWallpaperRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->removeCallbacksInWorkThread(Ljava/lang/Runnable;)V

    .line 250
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/LocalWallpaperHelper;->mLoadWallpaperRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public type()Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;
    .locals 0

    .line 238
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;->Local:Lcom/coloros/systemui/keyguard/wallpaper/BaseWallpaperHelper$Type;

    return-object p0
.end method
