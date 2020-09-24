.class public Lcom/coloros/wallpapersetter/WallpaperSetter;
.super Ljava/lang/Object;
.source "WallpaperSetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTENSION_FACTOR:F = 1.5f

.field private static final KEYGUARDWALLPAPER:Ljava/lang/String; = "keyguardwallpaper.png"

.field private static final KEYGUARDWALLPAPER_BACKUP:Ljava/lang/String; = "keyguardwallpaper_backup.png"

.field private static final KEYGUARD_MANAGE_PKG_NAME:Ljava/lang/String; = "com.oppo.lockmanager"

.field private static final KEYGUARD_PKG_NAME:Ljava/lang/String; = "com.android.keyguard"

.field public static final KEY_WALLPAPER_SET:Ljava/lang/String; = "current_wallpaper_name"

.field private static final OPPO_KEGUARD_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.OPPO_KEGUARD_WALLPAPER_CHANGED"

.field private static final OPPO_KEYGUARD_COLOR:Ljava/lang/String; = "KeyguardWallpaperTxtColor"

.field private static final TAG:Ljava/lang/String; = "WS.WallpaperSetter"

.field public static final TAG_AMPM:Ljava/lang/String; = "ampm"

.field public static final TAG_DATE:Ljava/lang/String; = "date"

.field public static final TAG_TIME:Ljava/lang/String; = "time"

.field public static final TIME_DATE_ROOT_LAYOUT_NAME:Ljava/lang/String; = "keyguard_clock_view"

.field private static final UNOFFICIAL_WALLPAPER:Ljava/lang/String; = "unofficial"

.field public static final WALLPAPER_DEFAULT:Ljava/lang/String; = "default_wallpaper"

.field public static final WALLPAPER_IGNORE:Ljava/lang/String; = "ignore_wallpaper"

.field public static final WALLPAPER_INDEX_DESKTOP:I = 0x0

.field public static final WALLPAPER_INDEX_KEYGUARD:I = 0x1

.field public static final WALLPAPER_SEPARATOR:Ljava/lang/String; = ";"

.field private static final WALLPAPER_TEMP_NAME_DESKTOP:Ljava/lang/String; = "wallpaper_desktop"

.field private static final WALLPAPER_TEMP_NAME_KEYGUARD:Ljava/lang/String; = "wallpaper_keyguard"

.field public static final WALLPAPER_UNOFFICIAL:Ljava/lang/String; = "unofficial_wallpaper"

.field private static mWallpaperSetter:Lcom/coloros/wallpapersetter/WallpaperSetter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNeedRecycle:Z

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-boolean v0, Lcom/coloros/wallpapersetter/BaseUtils;->DEBUG:Z

    sput-boolean v0, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperSetter:Lcom/coloros/wallpapersetter/WallpaperSetter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    .line 77
    iput-object p1, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method

.method private backupWallpaperFile()Z
    .locals 7

    const-string v0, "backupWallpaperFile Exception"

    .line 406
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 411
    :goto_0
    sget-boolean v3, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    const-string v4, "WS.WallpaperSetter"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupWallpaperFile file = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_3

    .line 418
    :cond_2
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "keyguardwallpaper.png"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "keyguardwallpaper_backup.png"

    const/4 v6, 0x7

    .line 419
    invoke-virtual {p0, v2, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 420
    invoke-static {v5, v1}, Lcom/coloros/wallpapersetter/BaseUtils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_3

    .line 430
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 433
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 436
    :catch_0
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v5, v1

    goto :goto_4

    :catch_1
    move-object v5, v1

    .line 426
    :catch_2
    :try_start_3
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 430
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v5, :cond_6

    .line 433
    :goto_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 436
    :catch_3
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-object v5, v1

    :catch_5
    :try_start_5
    const-string p0, "backupWallpaperFile IOException"

    .line 423
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_5

    .line 430
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return v3

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v5, :cond_8

    .line 433
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    .line 436
    :catch_6
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_8
    :goto_5
    throw p0
.end method

.method private deleteWallpaperFile(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "deleteWallpaperFile Exception"

    .line 445
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 450
    :goto_0
    sget-boolean v3, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    const-string v4, "WS.WallpaperSetter"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteWallpaperFile file = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " f = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x7

    .line 456
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 464
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 467
    :catch_0
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_4

    :catch_1
    move-object v1, p0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 460
    :catch_2
    :goto_2
    :try_start_3
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 464
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 467
    :catch_3
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return v3

    :goto_4
    if-eqz v1, :cond_5

    .line 464
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 467
    :catch_4
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_5
    :goto_5
    throw p1
.end method

.method private getKeyguardManagerContext()Landroid/content/Context;
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    const-string v1, "com.oppo.lockmanager"

    invoke-static {v0, v1}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    const-string v0, "com.android.keyguard"

    invoke-static {p0, v0}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getWallpaperSetter(Landroid/content/Context;)Lcom/coloros/wallpapersetter/WallpaperSetter;
    .locals 1

    .line 82
    sget-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperSetter:Lcom/coloros/wallpapersetter/WallpaperSetter;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/coloros/wallpapersetter/WallpaperSetter;

    invoke-direct {v0, p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperSetter:Lcom/coloros/wallpapersetter/WallpaperSetter;

    .line 86
    :cond_0
    sget-object p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperSetter:Lcom/coloros/wallpapersetter/WallpaperSetter;

    return-object p0
.end method

.method private hideTagView(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 643
    invoke-virtual {p0, p1, p2}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getTagView(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 645
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private restoreWallpaperFile()Z
    .locals 9

    const-string v0, "keyguardwallpaper_backup.png"

    const-string v1, "restoreWallpaperFile Exception"

    .line 365
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 370
    :goto_0
    sget-boolean v5, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    const-string v6, "WS.WallpaperSetter"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreWallpaper file = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_3

    .line 377
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "keyguardwallpaper.png"

    const/4 v8, 0x7

    .line 378
    invoke-virtual {v2, v4, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 379
    invoke-static {v7, v3}, Lcom/coloros/wallpapersetter/BaseUtils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 380
    invoke-direct {p0, v0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->deleteWallpaperFile(Ljava/lang/String;)Z

    .line 381
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "festivel"

    invoke-static {p0, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 391
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 394
    :cond_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v5, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v7, v3

    goto :goto_4

    :catch_1
    move-object v7, v3

    .line 387
    :catch_2
    :try_start_3
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    .line 391
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v7, :cond_6

    .line 394
    :goto_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 397
    :catch_3
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-object v7, v3

    :catch_5
    :try_start_5
    const-string p0, "restoreWallpaperFile IOException"

    .line 384
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_5

    .line 391
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    :goto_3
    return v5

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v7, :cond_8

    .line 394
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    .line 397
    :catch_6
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_8
    :goto_5
    throw p0
.end method

.method private setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)V
    .locals 8

    const-string v0, "WS.WallpaperSetter"

    if-nez p1, :cond_0

    const-string p0, "setKeyguardWallpaperBmp bitmap = null"

    .line 154
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 160
    iget-object p2, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    const/4 p3, 0x2

    invoke-direct {p0, p2, p1, p3}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x1

    .line 163
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "festivel"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 165
    sget-boolean v6, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setKeyguardWallpaperBmp isFestivalDay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setKeyguardWallpaperBmp isFestival = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v3, :cond_3

    if-eqz p2, :cond_4

    .line 172
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->backupWallpaperFile()Z

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const-string v3, "keyguardwallpaper_backup.png"

    .line 176
    invoke-direct {p0, v3}, Lcom/coloros/wallpapersetter/WallpaperSetter;->deleteWallpaperFile(Ljava/lang/String;)Z

    .line 179
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x0

    if-eqz v2, :cond_5

    .line 182
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    .line 184
    :cond_5
    sget-boolean v3, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setKeyguardWallpaperBmp file = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    :try_start_0
    const-string p2, "keyguardwallpaper.png"

    .line 189
    invoke-virtual {v2, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 190
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/wallpapersetter/ImageProcess;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 191
    iget-boolean p2, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    if-eqz p2, :cond_8

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "setKeyguardWallpaperBmp Exception"

    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 198
    :cond_8
    :goto_1
    sget-boolean p1, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setKeyguardWallpaperBmp isSucess  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v1, :cond_a

    .line 200
    invoke-direct {p0, v2, p3}, Lcom/coloros/wallpapersetter/WallpaperSetter;->updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPPO_KEGUARD_WALLPAPER_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "close_pictorial_wallpaper"

    .line 202
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private setWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 8

    const-string v0, "setWallpaper ex = "

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "WS.WallpaperSetter"

    if-eq p3, v2, :cond_0

    if-eq p3, v1, :cond_0

    .line 517
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setWallpaper,which wallpaper is not available. which = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v4, "wallpaper_keyguard"

    .line 521
    invoke-virtual {p1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 525
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/coloros/wallpapersetter/ImageProcess;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 526
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 527
    :try_start_1
    iget-object v7, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v7, p2, v6, v2, p3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 533
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 537
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v6, p2

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v6, p2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v2

    .line 530
    :goto_0
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWallpaper e = "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    .line 532
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 533
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    if-eqz v6, :cond_3

    .line 537
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p2

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    move v2, v5

    :goto_2
    if-eqz v2, :cond_4

    if-ne p3, v1, :cond_4

    const-string p2, "unofficial"

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/coloros/wallpapersetter/WallpaperSetter;->updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void

    :goto_3
    if-eqz v4, :cond_5

    .line 532
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 533
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_5
    if-eqz v6, :cond_6

    .line 537
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_6
    :goto_4
    throw p0
.end method

.method private updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 346
    sget-boolean p1, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateWallpaperName wallpaperName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WS.WallpaperSetter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 348
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "currentwallpaper"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getKeyguardColorableTextPositionRect()Landroid/graphics/Rect;
    .locals 4

    .line 612
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "clock_view_margin_top"

    .line 613
    invoke-static {p0, v0}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "clock_view_margin_left"

    .line 614
    invoke-static {p0, v1}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "clock_time_height_limit"

    .line 615
    invoke-static {p0, v2}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "clock_time_width_limit"

    .line 616
    invoke-static {p0, v3}, Lcom/coloros/wallpapersetter/BaseUtils;->getRemoteDimensionRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    .line 617
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr p0, v1

    add-int/2addr v2, v0

    invoke-direct {v3, v1, v0, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public getTagView(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 651
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 652
    check-cast p1, Landroid/view/ViewGroup;

    .line 653
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 655
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 656
    invoke-virtual {p0, v3, p2}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getTagView(Landroid/view/View;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 662
    :cond_1
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 663
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 664
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getTimeDateRootView()Landroid/view/ViewGroup;
    .locals 6

    const/4 v0, 0x0

    .line 628
    :try_start_0
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    .line 629
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 630
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "keyguard_clock_view"

    const-string v5, "layout"

    .line 631
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 633
    invoke-virtual {v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "ampm"

    .line 634
    invoke-direct {p0, v1, v0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->hideTagView(Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 637
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeDateRootView e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WS.WallpaperSetter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-object v0
.end method

.method public restoreNormalWallpaper()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "festivel"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 354
    sget-boolean v1, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreNormalWallpaper isFestvalDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WS.WallpaperSetter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 356
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->restoreWallpaperFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPPO_KEGUARD_WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public setDeskWallpaper(I)V
    .locals 1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WS.WallpaperSetter"

    const-string p1, "setDeskWallpaper IOException"

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDeskWallpaper(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WS.WallpaperSetter"

    const-string p1, "setDeskWallpaper IOException"

    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDesktopWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "setDesktopWallpaper ex = "

    const-string v1, "WS.WallpaperSetter"

    const-string v2, "wallpaper_desktop"

    .line 483
    invoke-virtual {p1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x0

    .line 486
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/coloros/wallpapersetter/ImageProcess;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 487
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :try_start_1
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, p2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 493
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 497
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, p2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, p2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 490
    :goto_1
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDesktopWallpaper e = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_1

    .line 492
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 493
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz v2, :cond_2

    .line 497
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_3

    .line 492
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 493
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v2, :cond_4

    .line 497
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 500
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_4
    :goto_4
    throw p0
.end method

.method public setKeyguardTextColor(I)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardTextColor, color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WS.WallpaperSetter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "KeyguardWallpaperTxtColor"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setKeyguardWallpaper(IZ)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    const-string v0, "unofficial"

    .line 112
    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setKeyguardWallpaper(IZLjava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    .line 126
    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setKeyguardWallpaper(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    .line 118
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "currentwallpaper"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setKeyguardWallpaper(Landroid/content/Context;ZILjava/lang/String;)V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setKeyguardWallpaper(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 9

    const-string v0, "setKeyguardWallpaper Exception"

    const-string v1, "WS.WallpaperSetter"

    if-nez p1, :cond_0

    const-string p0, "setKeyguardWallpaper wallpaperResContext = null"

    .line 220
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 224
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v3

    .line 225
    iget-object v4, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "festivel"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 226
    sget-boolean v7, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setKeyguardWallpaper isFestivalDay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setKeyguardWallpaper isFestival = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 233
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->backupWallpaperFile()Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string v4, "keyguardwallpaper_backup.png"

    .line 237
    invoke-direct {p0, v4}, Lcom/coloros/wallpapersetter/WallpaperSetter;->deleteWallpaperFile(Ljava/lang/String;)Z

    .line 240
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x0

    if-eqz v3, :cond_4

    .line 243
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, p2

    .line 245
    :goto_1
    sget-boolean v6, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setKeyguardWallpaper file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v4, :cond_6

    goto :goto_4

    .line 252
    :cond_6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p3, "keyguardwallpaper.png"

    const/4 v4, 0x7

    .line 253
    invoke-virtual {v3, p3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 254
    invoke-static {p1, p2}, Lcom/coloros/wallpapersetter/BaseUtils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_7

    .line 261
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz p1, :cond_a

    .line 264
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 267
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p1, p2

    goto :goto_5

    :catch_1
    move-object p1, p2

    .line 257
    :catch_2
    :try_start_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_8

    .line 261
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz p1, :cond_9

    .line 264
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 267
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    move v2, v5

    .line 270
    :cond_a
    :goto_3
    sget-boolean p1, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setKeyguardWallpaper isSucess  = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v2, :cond_c

    .line 272
    invoke-direct {p0, v3, p4}, Lcom/coloros/wallpapersetter/WallpaperSetter;->updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPPO_KEGUARD_WALLPAPER_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_c
    :goto_4
    return-void

    :goto_5
    if-eqz p2, :cond_d

    .line 261
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_d
    if-eqz p1, :cond_e

    .line 264
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 267
    :catch_4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_e
    :goto_6
    throw p0
.end method

.method public setKeyguardWallpaper(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "setKeyguardWallpaper Exception"

    const-string v1, "WS.WallpaperSetter"

    if-nez p1, :cond_0

    const-string p0, "setKeyguardWallpaper wallpaperResContext = null"

    .line 285
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 289
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->getKeyguardManagerContext()Landroid/content/Context;

    move-result-object v2

    .line 290
    iget-object v3, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "festivel"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 291
    sget-boolean v6, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setKeyguardWallpaper isFestivalDay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setKeyguardWallpaper isFestival = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->backupWallpaperFile()Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string v3, "keyguardwallpaper_backup.png"

    .line 302
    invoke-direct {p0, v3}, Lcom/coloros/wallpapersetter/WallpaperSetter;->deleteWallpaperFile(Ljava/lang/String;)Z

    .line 305
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p2, 0x0

    if-eqz v2, :cond_4

    .line 308
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, p2

    .line 310
    :goto_1
    sget-boolean v5, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setKeyguardWallpaper file = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v3, :cond_6

    goto :goto_4

    .line 317
    :cond_6
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p3, "keyguardwallpaper.png"

    const/4 v5, 0x7

    .line 318
    invoke-virtual {v2, p3, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p2

    .line 319
    invoke-static {v3, p2}, Lcom/coloros/wallpapersetter/BaseUtils;->copyFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_7

    .line 326
    :try_start_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 329
    :cond_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 332
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, p2

    goto :goto_5

    :catch_1
    move-object v3, p2

    .line 322
    :catch_2
    :try_start_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_8

    .line 326
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v3, :cond_9

    .line 329
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 332
    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    move p1, v4

    .line 335
    :goto_3
    sget-boolean p2, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz p2, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setKeyguardWallpaper isSucess  = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz p1, :cond_b

    .line 337
    invoke-direct {p0, v2, p4}, Lcom/coloros/wallpapersetter/WallpaperSetter;->updateWallpaperName(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.OPPO_KEGUARD_WALLPAPER_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_b
    :goto_4
    return-void

    :goto_5
    if-eqz p2, :cond_c

    .line 326
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_c
    if-eqz v3, :cond_d

    .line 329
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 332
    :catch_4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_d
    :goto_6
    throw p0
.end method

.method public setKeyguardWallpaper(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const-string v0, "unofficial"

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-void
.end method

.method public setKeyguardWallpaper(Landroid/graphics/Bitmap;ZZ)V
    .locals 1

    const-string v0, "unofficial"

    .line 143
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)V

    return-void
.end method

.method public setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 147
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)V

    return-void
.end method

.method public setKeyguardWallpaperRes(IZ)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    const-string v0, "unofficial"

    .line 138
    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/wallpapersetter/WallpaperSetter;->setKeyguardWallpaperBmp(Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mNeedRecycle:Z

    return-void
.end method

.method public setWallpaperName(Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;Ljava/lang/String;)V
    .locals 7

    .line 558
    sget-boolean v0, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    const-string v1, "WS.WallpaperSetter"

    if-eqz v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperName. wallpaperType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , wallpaperName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "ignore_wallpaper"

    if-eqz v0, :cond_1

    const-string p2, "setWallpaperName. wallpaperName is empty!"

    .line 563
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    :cond_1
    const-string v0, ";"

    .line 566
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p2, "setWallpaperName. wallpaperName contains ;!"

    .line 567
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 571
    :cond_2
    iget-object p0, p0, Lcom/coloros/wallpapersetter/WallpaperSetter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "current_wallpaper_name"

    .line 574
    invoke-static {p0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 575
    sget-boolean v5, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWallpaperName. currentSettingString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v5, "default_wallpaper"

    if-nez v4, :cond_5

    move-object v2, v5

    :cond_4
    :goto_0
    move-object v4, v2

    goto :goto_1

    .line 582
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 583
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 587
    aget-object v2, v4, v2

    const/4 v5, 0x1

    .line 588
    aget-object v4, v4, v5

    .line 592
    :goto_1
    sget-object v5, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->DESKTOP:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    if-ne p1, v5, :cond_7

    goto :goto_2

    .line 594
    :cond_7
    sget-object v4, Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;->KEYGUARD:Lcom/coloros/wallpapersetter/WallpaperSetter$WallpaperType;

    if-ne p1, v4, :cond_8

    move-object v4, p2

    move-object p2, v2

    goto :goto_2

    :cond_8
    move-object v4, p2

    .line 601
    :goto_2
    sget-boolean p1, Lcom/coloros/wallpapersetter/WallpaperSetter;->DEBUG:Z

    if-eqz p1, :cond_9

    .line 602
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWallpaperName. newDesktopWallpaper = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , newKeyguardWallpaper = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
